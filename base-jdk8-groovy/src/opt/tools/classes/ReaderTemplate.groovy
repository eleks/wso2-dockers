
import java.util.Map;
import java.util.LinkedHashMap;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.BufferedInputStream;
import groovy.lang.Binding;
import groovy.lang.GroovyShell;
import groovy.lang.Script;
import org.codehaus.groovy.runtime.MethodClosure;

import java.nio.CharBuffer;

/**
 * String-based groovy-like template that supports <% %> tags for code and <%= xxx %> as value injection
 * usage:
 * def tpl = new ReaderTemplate(" myParm1 = <%=myParm1%>; myParm2 = <%=myParm2%>")
 * tpl.make( out: new File("out1").newWriter(), myParm1: 111, myParm2:'sss' )
 * tpl.make( out: new File("out2").newWriter(), myParm1: 222, myParm2:'ddd' )
 */
@groovy.transform.CompileStatic
public class ReaderTemplate {
    //protected static final String className = FileTemplate.class.getName();
    
    CharBuffer template;
    String scriptText;
    //String encoding = "UTF-8";
    
    public ReaderTemplate(CharSequence cc)throws IOException {
        this.template = CharBuffer.wrap(cc);
        scriptText = this.parse();
    }
    
    public ReaderTemplate(Reader r)throws IOException {
        this( r.getText() );
    }
    
    public String toString() {
        return this.getClass().getName() + "[[[script:\n" + scriptText + "]]]";
    }
    
    public Appendable make( Map binding )throws IOException {
        Map bindMap = new LinkedHashMap();
        bindMap.putAll( binding );

        Appendable out  = bindMap.get("out");
        if(out==null)out=new StringWriter( (int)(this.template.length()*1.33) );
        if ( !(out instanceof java.io.Writer) && !(out instanceof java.io.PrintStream) ){ throw new RuntimeException("Binding parameter `out` should be instance of java.io.Writer or java.io.PrintStream"); }
        bindMap.put("out", out);
        bindMap.put("template", template);
        bindMap.put("write", new MethodClosure(this,"write")); //this.&write;
        
        Script script = new GroovyShell().parse( scriptText , "ReaderTemplate_" + Long.toHexString(template.hashCode()) + ".groovy");
        script.setBinding( new Binding(bindMap) );
        try {
            script.run();
        }catch(Throwable e){
            //println "Failed script:\n$scriptText";
            throw e;
        }
        return out;
    }
    
    /**used in internal composed script to write output*/
    public void write ( Appendable out, Object data ) throws IOException {
        write(out,data,-1);
    }
    
    public void write( Appendable out, Object data, int chars /*-1: all*/ )throws IOException{
        if (data==null || chars==0)return;
        if(data instanceof CharSequence){
            CharSequence cs = (CharSequence)data;
            if(chars==-1)chars=cs.length()
            if(chars==0)return;
            out.append(cs, 0, chars);
            if(cs instanceof CharBuffer){
                //if it's a charbuffer move current position
                cs.position( cs.position()+chars );
            }
        }else{
            this.write(out, data.toString(), chars);
        }
    }

    private String parse()throws IOException {
        int state = 0;//0 - `<` - 1 - `%` - 2 -'%' - 3 - `>` - 1
        boolean eqFlag = false;
        StringBuffer out=new StringBuffer( (int)(template.length()*0.75) );
        char [] cchars = [
            '<', '%', '%', '>',
            '$', '{', '}'
        ] as char[];

        int index = 0;
        int start = 0; //start of the last block script or default
        out.append("/*autogenerated script start*/\n");
        for(index=0; index<template.length(); index++) {
            char b=template.get(index);
            switch(state){
                case 0: //default
                    if( b==cchars[0] ){ state=1; }
                    // else if( b==cchars[4] ){ state=5; } //comment to disable support of ${} expressions
                    break;
                case 1: //got `<` from default waiting for `%`
                    if( b==cchars[state] ){
                        state++;
                        if(index-1>start){
                            out.append("\ntemplate.position("+start+");");
                            out.append("\nwrite(out, template, "+(index-1-start)+");\n");
                        }
                        start=index+1;
                    } else { 
                        state=0; //fall back state
                    }
                    break;
                case 2: //got `%` after `<` : sctipt started from the next byte
                //println "index=$index state=$state b=`${(char)b}`"
                    if( b==cchars[state] ) { state++; }
                    else {
                        if( start==index && b==(char)'=' ){ out.append("\nwrite(out, "); eqFlag=true; }
                        else { out.append(b); }
                    }
                    break;
                case 3: //got `%` from script waiting for `>` to go to default state
                    if( b==cchars[state] ){
                        state=0;
                        if(index+3>start){
                            if(eqFlag) { out.append(" );"); }
                            eqFlag=false;
                            //out.append("\ntemplateStream.skip("+(index-start+3)+");");
                        }
                        start=index+1;
                    } else {
                        out.append('%');
                        out.append((char)b);
                        state=2; //fall back state
                    }
                    break;
                case 5: //got '$' on previous step. waiting for '{'
                    if( b==cchars[state] ){
                        state++;
                        if(index-1>start){
                            out.append("\ntemplate.position("+start+");");
                            out.append("\nwrite(out, template, "+(index-1-start)+");\n");
                        }
                        out.append("\nwrite(out, ");
                        start=index+1;
                    } else {
                        state=0; //fall back state
                    }
                    break;
                case 6: //got `}` from script waiting for `>` to go to default state
                    if( b==cchars[state] ){
                        state=0;
                        if(index+3>start){
                            out.append(" );");
                            //out.append("\ntemplateStream.skip("+(index-start+3)+");");
                        }
                        start=index+1;
                    } else {
                        out.append((char)b);
                    }
                    break;
            }
        }
        if ( state==0 ) {
            if(index>start){
                out.append("\ntemplate.position("+start+");");
                out.append("\nwrite(out, template, "+(index-start)+");\n");
            }
        } else {
            throw new RuntimeException("Wrong state="+state+" at the end of the template file. Close all expressions!");
        }
        out.append("\ntemplate.position(0);");
        out.append("\nout.flush();");
        out.append("\n/*autogenerated script end*/");
        template.position(0);
        return out.toString();
    }
}
