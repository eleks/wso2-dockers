<?xml version="1.0" encoding="ISO-8859-1"?>
<!--
  ~  Copyright (c) 2005-2010, WSO2 Inc. (http://wso2.com) All Rights Reserved.
  ~
  ~  WSO2 Inc. licenses this file to you under the Apache License,
  ~  Version 2.0 (the "License"); you may not use this file except
  ~  in compliance with the License.
  ~  You may obtain a copy of the License at
  ~
  ~    http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~  Unless required by applicable law or agreed to in writing,
  ~  software distributed under the License is distributed on an
  ~  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~  KIND, either express or implied.  See the License for the
  ~  specific language governing permissions and limitations
  ~  under the License.
  -->

<axisconfig name="AxisJava2.0">
    
    <!-- ================================================= -->
    <!--                  Parameters                       -->
    <!-- ================================================= -->

    <!-- Change this to true if you want to enable hot deployment of services -->
    <parameter name="hotdeployment" locked="false">true</parameter>
    <!-- Change this to true if you want to enable hot update of services -->
    <parameter name="hotupdate" locked="false">true</parameter>

    <!-- Change this to true if you want to enable MTOM -->
    <parameter name="enableMTOM" locked="false">false</parameter>
    <!-- Change this to true if you want to enable SwA -->
    <parameter name="enableSwA" locked="false">false</parameter>

    <!-- If you want to enable file caching for attachments change this to true -->
    <parameter name="cacheAttachments" locked="false">false</parameter>
    <!-- Attachment file caching location relative to CARBON_HOME -->
    <parameter name="attachmentDIR" locked="false">work/mtom</parameter>
    <!-- Attachment file cache threshold size -->
    <parameter name="sizeThreshold" locked="false">4000</parameter>

    <!-- Completely disable REST handling in Axis2/Synapse if the value is true -->
    <parameter name="disableREST" locked="false">false</parameter>

    <!-- Sandesha2 persistance storage manager -->
    <parameter name="Sandesha2StorageManager" locked="false">inmemory</parameter>

    <!-- Our HTTP endpoints can handle both REST and SOAP under the following service path. In -->
    <!-- case of a servlet container, if you change this you have to manually change the -->
    <!-- settings of your servlet container to map this context path to proper Axis2 servlets -->
    <parameter name="servicePath" locked="false">services</parameter>

    <!--the directory in which .aar services are deployed inside axis2 repository-->
    <parameter name="ServicesDirectory">axis2services</parameter>

    <!--the directory in which modules are deployed inside axis2 repository-->
    <parameter name="ModulesDirectory">axis2modules</parameter>

    <!-- User agent and the server details to be used in the http communication -->
    <parameter name="userAgent" locked="true">WSO2 ESB 4.9.0</parameter>
    <parameter name="server" locked="true">WSO2 ESB 4.9.0</parameter>

    <!-- During a fault, stacktrace can be sent with the fault message. The following flag -->
    <!-- will control that behaviour -->
    <parameter name="sendStacktraceDetailsWithFaults" locked="false">false</parameter>
    
    <!-- If there aren't any information available to find out the fault reason, we set the -->
    <!-- message of the exception as the faultreason/Reason. But when a fault is thrown from -->
    <!-- a service or some where, it will be wrapped by different levels. Due to this the -->
    <!-- initial exception message can be lost. If this flag is set then, Axis2 tries to get -->
    <!-- the first exception and set its message as the faultreason/Reason. -->
    <parameter name="DrillDownToRootCauseForFaultReason" locked="false">false</parameter>

    <!-- Set the flag to true if you want to enable transport level session management -->
    <parameter name="manageTransportSession" locked="false">true</parameter>

    <!-- This will give out the timout of the configuration contexts, in milliseconds -->
    <parameter name="ConfigContextTimeoutInterval" locked="false">30000</parameter>

    <!-- Synapse Configuration file location relative to CARBON_HOME -->
    <parameter name="SynapseConfig.ConfigurationFile" locked="false">repository/deployment/server/synapse-configs</parameter>
    <!-- Synapse Home parameter -->
    <parameter name="SynapseConfig.HomeDirectory" locked="false">.</parameter>
    <!-- Resolve root used to resolve synapse references like schemas inside a WSDL -->
    <parameter name="SynapseConfig.ResolveRoot" locked="false">.</parameter>
    <!-- Synapse Server name parameter -->
    <parameter name="SynapseConfig.ServerName" locked="false">localhost</parameter>

    <!-- To override repository/services you need to uncomment following parameter and value -->
    <!-- SHOULD be absolute file path. -->
    <!--<parameter name="ServicesDirectory" locked="false">service</parameter>-->

    <!-- To override repository/modules you need to uncomment following parameter and value -->
    <!-- SHOULD be absolute file path. -->
    <!--<parameter name="ModulesDirectory" locked="false">modules</parameter>-->

    <!-- If you have a frontend host which exposes this webservice using a different public URL -->
    <!-- use this parameter to override autodetected url -->
    <!--<parameter name="httpFrontendHostUrl" locked="false">https://someotherhost/context</parameter>-->

    <!-- ================================================= -->
    <!--                  Listeners                        -->
    <!-- ================================================= -->

    <!-- This deployment interceptor will be called whenever before a module is initialized or -->
    <!-- service is deployed -->
    <listener class="org.wso2.carbon.core.deployment.DeploymentInterceptor"/>

    <!-- ================================================= -->
    <!--                  Deployers                        -->
    <!-- ================================================= -->

    <!-- Deployer for the dataservice. -->
    <!--<deployer extension="dbs" directory="dataservices" class="org.wso2.dataservices.DBDeployer"/>-->

    <!-- Axis1 deployer for Axis2 -->
    <!--<deployer extension="wsdd" class="org.wso2.carbon.axis1services.Axis1Deployer" directory="axis1services"/>-->

    <!-- POJO service deployer for Jar -->
    <!--<deployer extension="jar" class="org.apache.axis2.deployment.POJODeployer" directory="pojoservices"/>-->

    <!-- POJO service deployer for Class -->
    <!--<deployer extension="class" class="org.apache.axis2.deployment.POJODeployer" directory="pojoservices"/>-->

    <!-- JAXWS service deployer -->
    <!--<deployer extension=".jar" class="org.apache.axis2.jaxws.framework.JAXWSDeployer" directory="servicejars"/>-->

    <!-- ================================================= -->
    <!--                Message Receivers                  -->
    <!-- ================================================= -->

    <!-- This is the set of default Message Receivers for the system, if you want to have -->
    <!-- message receivers for any of the other Message exchange Patterns (MEP) implement it -->
    <!-- and add the implementation class to here, so that you can refer from any operation -->
    <!-- Note : You can override this for particular service by adding this same element to the -->
    <!-- services.xml with your preferences -->
    <messageReceivers>
        <messageReceiver mep="http://www.w3.org/ns/wsdl/in-only"
                         class="org.apache.axis2.rpc.receivers.RPCInOnlyMessageReceiver"/>
        <messageReceiver mep="http://www.w3.org/ns/wsdl/robust-in-only"
                         class="org.apache.axis2.rpc.receivers.RPCInOnlyMessageReceiver"/>
        <messageReceiver mep="http://www.w3.org/ns/wsdl/in-out"
                         class="org.apache.axis2.rpc.receivers.RPCMessageReceiver"/>
    </messageReceivers>

    <!-- ================================================= -->
    <!--                Message Formatters                 -->
    <!-- ================================================= -->

    <!-- Following content type to message formatter mapping can be used to implement support -->
    <!-- for different message format serializations in Axis2. These message formats are -->
    <!-- expected to be resolved based on the content type. -->
    <messageFormatters>
        <messageFormatter contentType="application/x-www-form-urlencoded"
                          class="org.apache.synapse.commons.formatters.XFormURLEncodedFormatter"/>
        <messageFormatter contentType="multipart/form-data"
                          class="org.apache.axis2.transport.http.MultipartFormDataFormatter"/>
        <messageFormatter contentType="application/xml"
                          class="org.apache.axis2.transport.http.ApplicationXMLFormatter"/>
        <messageFormatter contentType="text/xml"
                         class="org.apache.axis2.transport.http.SOAPMessageFormatter"/>
        <messageFormatter contentType="application/soap+xml"
                         class="org.apache.axis2.transport.http.SOAPMessageFormatter"/>
        <messageFormatter contentType="text/plain"
                         class="org.apache.axis2.format.PlainTextFormatter"/>

        <!--JSON Message Formatters-->
        <messageFormatter contentType="application/json"
                          class="org.apache.synapse.commons.json.JsonStreamFormatter"/>
        <!--messageFormatter contentType="application/x-www-form-urlencoded"
                        class="org.wso2.carbon.relay.ExpandingMessageFormatter"/-->
        <!--messageFormatter contentType="multipart/form-data"
                        class="org.wso2.carbon.relay.ExpandingMessageFormatter"/-->
        <!--messageFormatter contentType="application/xml"
                        class="org.wso2.carbon.relay.ExpandingMessageFormatter"/-->
        <!--messageFormatter contentType="text/html"
                        class="org.wso2.carbon.relay.ExpandingMessageFormatter"/-->
        <!--messageFormatter contentType="application/soap+xml"
                        class="org.wso2.carbon.relay.ExpandingMessageFormatter"/-->
        <!--messageFormatter contentType="text/xml"
                        class="org.wso2.carbon.relay.ExpandingMessageFormatter"/-->
	    <!--messageFormatter contentType="x-application/hessian"
                         class="org.apache.synapse.format.hessian.HessianMessageFormatter"/-->
        <!--messageFormatter contentType=""
                         class="org.apache.synapse.format.hessian.HessianMessageFormatter"/-->
        <!--messageFormatter contentType="application/edi-hl7"
                         class="org.wso2.carbon.business.messaging.hl7.message.HL7MessageFormatter"/-->
    </messageFormatters>

    <!-- ================================================= -->
    <!--                Message Builders                   -->
    <!-- ================================================= -->

    <!-- Following content type to builder mapping can be used to implement support for -->
    <!-- different message formats in Axis2. These message formats are expected to be -->
    <!-- resolved based on the content type. -->
    <messageBuilders>
        <messageBuilder contentType="application/xml"
                        class="org.apache.axis2.builder.ApplicationXMLBuilder"/>
        <messageBuilder contentType="application/x-www-form-urlencoded"
                        class="org.apache.synapse.commons.builders.XFormURLEncodedBuilder"/>
        <messageBuilder contentType="multipart/form-data"
                        class="org.apache.axis2.builder.MultipartFormDataBuilder"/>
        <messageBuilder contentType="text/plain"
                        class="org.apache.axis2.format.PlainTextBuilder"/>

        <!--JSON Message Builders-->
        <messageBuilder contentType="application/json"
                        class="org.apache.synapse.commons.json.JsonStreamBuilder"/>
	    <!--messageBuilder contentType="application/xml"
                        class="org.wso2.carbon.relay.BinaryRelayBuilder"/-->
        <!--messageBuilder contentType="application/x-www-form-urlencoded"
                        class="org.wso2.carbon.relay.BinaryRelayBuilder"/-->
        <!--messageBuilder contentType="multipart/form-data"
                        class="org.wso2.carbon.relay.BinaryRelayBuilder"/-->
        <!--messageBuilder contentType="multipart/related"
                       class="org.wso2.carbon.relay.BinaryRelayBuilder"/-->
        <!--messageBuilder contentType="application/soap+xml"
                       class="org.wso2.carbon.relay.BinaryRelayBuilder"/-->
        <!--messageBuilder contentType="text/plain"
                       class="org.wso2.carbon.relay.BinaryRelayBuilder"/-->
        <!--messageBuilder contentType="text/xml"
                       class="org.wso2.carbon.relay.BinaryRelayBuilder"/-->
        <!--messageBuilder contentType="x-application/hessian"
                        class="org.apache.synapse.format.hessian.HessianMessageBuilder"/-->
        <!--messageBuilder contentType=""
                         class="org.apache.synapse.format.hessian.HessianMessageBuilder"/-->
        <!--messageBuilder contentType="application/edi-hl7"
                        class="org.wso2.carbon.business.messaging.hl7.message.HL7MessageBuilder"/-->
    </messageBuilders>

    <!-- ================================================= -->
    <!--             Transport Ins (Listeners)             -->
    <!-- ================================================= -->

     <transportReceiver name="http" class="org.apache.synapse.transport.passthru.PassThroughHttpListener">
        <parameter name="port" locked="false">8280</parameter>
        <parameter name="non-blocking" locked="false">true</parameter>
        <% if (esb_wsdl_epr_prefix && esb_wsdl_epr_prefix['http']) { %>
        <parameter name="bind-address" locked="false"><%= esb_wsdl_epr_prefix['http']['bind_address'] %></parameter>
        <parameter name="WSDLEPRPrefix" locked="false"><%= esb_wsdl_epr_prefix['http']['prefix'] %></parameter>
        <% } %>
        <parameter name="httpGetProcessor" locked="false">org.wso2.carbon.mediation.transport.handlers.PassThroughNHttpGetProcessor</parameter>
        <!--<parameter name="priorityConfigFile" locked="false">location of priority configuration file</parameter>-->
    </transportReceiver>

     <transportReceiver name="https" class="org.apache.synapse.transport.passthru.PassThroughHttpSSLListener">
        <parameter name="port" locked="false">8243</parameter>
        <parameter name="non-blocking" locked="false">true</parameter>
        <parameter name="HttpsProtocols">TLSv1,TLSv1.1,TLSv1.2</parameter>
        <% if (esb_wsdl_epr_prefix && esb_wsdl_epr_prefix['https']) { %>
        <parameter name="bind-address" locked="false"><%= esb_wsdl_epr_prefix['https']['bind_address'] %></parameter>
        <parameter name="WSDLEPRPrefix" locked="false"><%= esb_wsdl_epr_prefix['https']['prefix'] %></parameter>
        <% } %>
        <parameter name="httpGetProcessor" locked="false">org.wso2.carbon.mediation.transport.handlers.PassThroughNHttpGetProcessor</parameter>
        <parameter name="keystore" locked="false">
            <KeyStore>
                <Location><%= key_stores['key_store']['location'] %></Location>
                <Type><%= key_stores['key_store']['type'] %></Type>
                <Password><%= key_stores['key_store']['password'] %></Password>
                <KeyPassword><%= key_stores['key_store']['key_password'] %></KeyPassword>
            </KeyStore>
        </parameter>
        <parameter name="truststore" locked="false">
            <TrustStore>
                <Location><%= key_stores['trust_store']['location'] %></Location>
                <Type><%= key_stores['trust_store']['type'] %></Type>
                <Password><%= key_stores['trust_store']['password'] %></Password>
            </TrustStore>
        </parameter>
        <!--<parameter name="SSLVerifyClient">require</parameter>
            supports optional|require or defaults to none -->
    </transportReceiver>

    <transportReceiver name="local" class="org.wso2.carbon.core.transports.local.CarbonLocalTransportReceiver"/>

    <!--<transportReceiver name="vfs" class="org.apache.synapse.transport.vfs.VFSTransportListener"/>-->

    <!--<transportReceiver name="mailto" class="org.apache.axis2.transport.mail.MailTransportListener">-->
        <!-- configure any optional POP3/IMAP properties
        check com.sun.mail.pop3 and com.sun.mail.imap package documentation for more details-->
    <!--</transportReceiver>-->

    <!--Uncomment this and configure as appropriate for JMS transport support, after setting up your JMS environment (e.g. ActiveMQ)
    <transportReceiver name="jms" class="org.apache.axis2.transport.jms.JMSListener">
        <parameter name="myTopicConnectionFactory" locked="false">
        	<parameter name="java.naming.factory.initial" locked="false">org.apache.activemq.jndi.ActiveMQInitialContextFactory</parameter>
        	<parameter name="java.naming.provider.url" locked="false">tcp://localhost:61616</parameter>
        	<parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">TopicConnectionFactory</parameter>
		    <parameter name="transport.jms.ConnectionFactoryType" locked="false">topic</parameter>
        </parameter>

        <parameter name="myQueueConnectionFactory" locked="false">
        	<parameter name="java.naming.factory.initial" locked="false">org.apache.activemq.jndi.ActiveMQInitialContextFactory</parameter>
        	<parameter name="java.naming.provider.url" locked="false">tcp://localhost:61616</parameter>
        	<parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">QueueConnectionFactory</parameter>
		    <parameter name="transport.jms.ConnectionFactoryType" locked="false">queue</parameter>
        </parameter>

        <parameter name="default" locked="false">
        	<parameter name="java.naming.factory.initial" locked="false">org.apache.activemq.jndi.ActiveMQInitialContextFactory</parameter>
        	<parameter name="java.naming.provider.url" locked="false">tcp://localhost:61616</parameter>
        	<parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">QueueConnectionFactory</parameter>
		    <parameter name="transport.jms.ConnectionFactoryType" locked="false">queue</parameter>
        </parameter>
    </transportReceiver>-->

    <!--Uncomment this and configure as appropriate for JMS transport support with Apache Qpid -->
    <!--transportReceiver name="jms" class="org.apache.axis2.transport.jms.JMSListener">
        <parameter name="myTopicConnectionFactory" locked="false">
            <parameter name="java.naming.factory.initial" locked="false">org.apache.qpid.jndi.PropertiesFileInitialContextFactory</parameter>
            <parameter name="java.naming.provider.url" locked="false">repository/conf/jndi.properties</parameter>
            <parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">TopicConnectionFactory</parameter>
            <parameter name="transport.jms.ConnectionFactoryType" locked="false">topic</parameter>
        </parameter>

        <parameter name="myQueueConnectionFactory" locked="false">
            <parameter name="java.naming.factory.initial" locked="false">org.apache.qpid.jndi.PropertiesFileInitialContextFactory</parameter>
            <parameter name="java.naming.provider.url" locked="false">repository/conf/jndi.properties</parameter>
            <parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">QueueConnectionFactory</parameter>
            <parameter name="transport.jms.ConnectionFactoryType" locked="false">queue</parameter>
        </parameter>

        <parameter name="default" locked="false">
            <parameter name="java.naming.factory.initial" locked="false">org.apache.qpid.jndi.PropertiesFileInitialContextFactory</parameter>
            <parameter name="java.naming.provider.url" locked="false">repository/conf/jndi.properties</parameter>
            <parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">QueueConnectionFactory</parameter>
            <parameter name="transport.jms.ConnectionFactoryType" locked="false">queue</parameter>
        </parameter>
    </transportReceiver-->

    <!--Uncomment this and configure as appropriate for JMS transport support with WSO2 MB 2.x.x -->
    <!--transportReceiver name="jms" class="org.apache.axis2.transport.jms.JMSListener">
        <parameter name="myTopicConnectionFactory" locked="false">
           <parameter name="java.naming.factory.initial" locked="false">org.wso2.andes.jndi.PropertiesFileInitialContextFactory</parameter>
            <parameter name="java.naming.provider.url" locked="false">repository/conf/jndi.properties</parameter>
            <parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">TopicConnectionFactory</parameter>
            <parameter name="transport.jms.ConnectionFactoryType" locked="false">topic</parameter>
        </parameter>

        <parameter name="myQueueConnectionFactory" locked="false">
            <parameter name="java.naming.factory.initial" locked="false">org.wso2.andes.jndi.PropertiesFileInitialContextFactory</parameter>
            <parameter name="java.naming.provider.url" locked="false">repository/conf/jndi.properties</parameter>
            <parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">QueueConnectionFactory</parameter>
           <parameter name="transport.jms.ConnectionFactoryType" locked="false">queue</parameter>
        </parameter>

        <parameter name="default" locked="false">
            <parameter name="java.naming.factory.initial" locked="false">org.wso2.andes.jndi.PropertiesFileInitialContextFactory</parameter>
            <parameter name="java.naming.provider.url" locked="false">repository/conf/jndi.properties</parameter>
            <parameter name="transport.jms.ConnectionFactoryJNDIName" locked="false">QueueConnectionFactory</parameter>
            <parameter name="transport.jms.ConnectionFactoryType" locked="false">queue</parameter>
        </parameter>
    </transportReceiver-->

    <!--Uncomment this for FIX transport support
    <transportReceiver name="fix" class="org.apache.synapse.transport.fix.FIXTransportListener"/>
    -->
    
    <!--transportReceiver name="hl7" class="org.wso2.carbon.business.messaging.hl7.transport.HL7TransportListener"/-->

    <!-- SAP Transport Listeners -->
    <!-- <transportReceiver name="idoc" class="org.wso2.carbon.transports.sap.SAPTransportListener"/> -->
    <!-- <transportReceiver name="bapi" class="org.wso2.carbon.transports.sap.SAPTransportListener"/> -->

    <!--Uncomment this and configure as appropriate for RabbitMQ transport support
    <transportReceiver name="rabbitmq" class="org.apache.axis2.transport.rabbitmq.RabbitMQListener">
        <parameter name="AMQPConnectionFactory" locked="false">
            <parameter name="rabbitmq.server.host.name" locked="false">localhost</parameter>
            <parameter name="rabbitmq.server.port" locked="false">5672</parameter>
            <parameter name="rabbitmq.server.user.name" locked="false"></parameter>
            <parameter name="rabbitmq.server.password" locked="false"></parameter>
            <parameter name="rabbitmq.connection.retry.interval" locked="false">10000</parameter>
            <parameter name="rabbitmq.connection.retry.count" locked="false">5</parameter>
        </parameter>
    </transportReceiver-->

   <!-- <transportReceiver name="mqtt" class="org.apache.axis2.transport.mqtt.MqttListener">
        <parameter locked="false" name="mqttConFactory">
            <parameter locked="false" name="mqtt.server.host.name">localhost</parameter>
            <parameter name="mqtt.connection.factory">mqttConFactory</parameter>
            <parameter locked="false" name="mqtt.server.port">1883</parameter>
            <parameter locked="false" name="mqtt.client.id">client-id-1234</parameter>
            <parameter locked="false" name="mqtt.topic.name">esb.test</parameter>
        </parameter>
    </transportReceiver>-->

    <!-- ================================================= -->
    <!--             Transport Outs (Senders)              -->
    <!-- ================================================= -->

    <transportSender name="http" class="org.apache.synapse.transport.passthru.PassThroughHttpSender">
        <parameter name="non-blocking" locked="false">true</parameter>
        <!--<parameter name="warnOnHTTP500" locked="false">*</parameter>-->
        <!--parameter name="http.proxyHost" locked="false">localhost</parameter-->
        <!--<parameter name="http.proxyPort" locked="false">3128</parameter>-->
        <!--<parameter name="http.nonProxyHosts" locked="false">localhost|moon|sun</parameter>-->
    </transportSender>

    <transportSender name="https" class="org.apache.synapse.transport.passthru.PassThroughHttpSSLSender">
        <parameter name="non-blocking" locked="false">true</parameter>
        <parameter name="keystore" locked="false">
            <KeyStore>
                <Location><%= key_stores['key_store']['location'] %></Location>
                <Type><%= key_stores['key_store']['type'] %></Type>
                <Password><%= key_stores['key_store']['password'] %></Password>
                <KeyPassword><%= key_stores['key_store']['key_password'] %></KeyPassword>
            </KeyStore>
        </parameter>
        <parameter name="truststore" locked="false">
            <TrustStore>
                <Location><%= key_stores['trust_store']['location'] %></Location>
                <Type><%= key_stores['trust_store']['type'] %></Type>
                <Password><%= key_stores['trust_store']['password'] %></Password>
            </TrustStore>
        </parameter>
        <!--<parameter name="HostnameVerifier">DefaultAndLocalhost</parameter>-->
            <!--supports Strict|AllowAll|DefaultAndLocalhost or the default if none specified -->
    </transportSender>

    <transportSender name="local" class="org.wso2.carbon.core.transports.local.CarbonLocalTransportSender"/>

    <!--Uncomment this local transport to use local transport in mediation flow-->
    <!--<transportSender name="local" class="org.apache.axis2.transport.local.NonBlockingLocalTransportSender"/>-->

   <!-- uncomment this and configure to use connection pools for sending messages>
     <transportSender name="jms" class="org.apache.axis2.transport.jms.JMSSender"/-->

    <!--transportSender name="vfs" class="org.apache.synapse.transport.vfs.VFSTransportSender"/-->

    <!-- Uncomment and configure the SMTP server information
    check com.sun.mail.smtp package documentation for descriptions of properties
    <transportSender name="mailto" class="org.apache.axis2.transport.mail.MailTransportSender">
        <parameter name="mail.smtp.host">smtp.gmail.com</parameter>
        <parameter name="mail.smtp.port">587</parameter>
        <parameter name="mail.smtp.starttls.enable">true</parameter>
        <parameter name="mail.smtp.auth">true</parameter>
        <parameter name="mail.smtp.user">synapse.demo.0</parameter>
        <parameter name="mail.smtp.password">mailpassword</parameter>
        <parameter name="mail.smtp.from">synapse.demo.0@gmail.com</parameter>
    </transportSender>-->

    <!--Uncomment this for FIX transport support
    <transportSender name="fix" class="org.apache.synapse.transport.fix.FIXTransportSender"/>
    -->
    
    <!--transportSender name="hl7" class="org.wso2.carbon.business.messaging.hl7.transport.HL7TransportSender"/-->

    <!-- SAP Transport Senders -->
    <!-- <transportSender name="idoc" class="org.wso2.carbon.transports.sap.SAPTransportSender"/> -->
    <!-- <transportSender name="bapi" class="org.wso2.carbon.transports.sap.SAPTransportSender"/> -->

    <!-- Uncomment this and configure to use RabbitMQ connection pools for sending messages
    <transportSender name="rabbitmq" class="org.apache.axis2.transport.rabbitmq.RabbitMQSender"/-->

    <!--<transportSender name="mqtt" class="org.apache.axis2.transport.mqtt.MqttSender"/>-->

    <!-- ================================================= -->
    <!--             Global Engaged Modules                -->
    <!-- ================================================= -->

    <!-- Comment this out to disable Addressing -->
    <module ref="addressing"/>

    <!-- ================================================= -->
    <!--                Clustering                         -->
    <!-- ================================================= -->
    <!--
     To enable clustering for this node, set the value of "enable" attribute of the "clustering"
     element to "true". The initialization of a node in the cluster is handled by the class
     corresponding to the "class" attribute of the "clustering" element. It is also responsible for
     getting this node to join the cluster.
     -->
    <clustering class="org.wso2.carbon.core.clustering.hazelcast.HazelcastClusteringAgent"
                enable="<%= clustering['enabled'] %>">

        <!--
           This parameter indicates whether the cluster has to be automatically initalized
           when the AxisConfiguration is built. If set to "true" the initialization will not be
           done at that stage, and some other party will have to explictly initialize the cluster.
        -->
        <parameter name="AvoidInitiation">true</parameter>

        <!--
           The membership scheme used in this setup. The only values supported at the moment are
           "multicast" and "wka"

           1. multicast - membership is automatically discovered using multicasting
           2. wka - Well-Known Address based multicasting. Membership is discovered with the help
                    of one or more nodes running at a Well-Known Address. New members joining a
                    cluster will first connect to a well-known node, register with the well-known node
                    and get the membership list from it. When new members join, one of the well-known
                    nodes will notify the others in the group. When a member leaves the cluster or
                    is deemed to have left the cluster, it will be detected by the Group Membership
                    Service (GMS) using a TCP ping mechanism.
        -->
        <parameter name="membershipScheme"><%= clustering['membership_scheme'] %></parameter>
<%=     context.render("/clustering.gspx/${clustering['membership_scheme']}.gspx") %>
        <!--<parameter name="licenseKey">xxx</parameter>-->
        <!--<parameter name="mgtCenterURL">http://localhost:8081/mancenter/</parameter>-->

        <!--
         The clustering domain/group. Nodes in the same group will belong to the same multicast
         domain. There will not be interference between nodes in different groups.
        -->
        <parameter name="domain"><%= clustering['domain'] %></parameter>

        <!-- The multicast address to be used -->
        <!--<parameter name="mcastAddress">228.0.0.4</parameter>-->

        <!-- The multicast port to be used -->
        <parameter name="mcastPort">45564</parameter>

        <parameter name="mcastTTL">100</parameter>

        <parameter name="mcastTimeout">60</parameter>

        <!--
           The IP address of the network interface to which the multicasting has to be bound to.
           Multicasting would be done using this interface.
        -->
        <!--
            <parameter name="mcastBindAddress">127.0.0.1</parameter>
        -->
        <!-- The host name or IP address of this member -->

        <parameter name="localMemberHost"><%= clustering['local_member_host'] %></parameter>

        <!--
            The bind adress of this member. The difference between localMemberHost & localMemberBindAddress
            is that localMemberHost is the one that is advertised by this member, while localMemberBindAddress
            is the address to which this member is bound to.
        -->
        <!--
        <parameter name="localMemberBindAddress">127.0.0.1</parameter>
        -->

        <!--
        The TCP port used by this member. This is the port through which other nodes will
        contact this member
         -->
        <parameter name="localMemberPort"><%= clustering['local_member_port'] %></parameter>

        <!--
            The bind port of this member. The difference between localMemberPort & localMemberBindPort
            is that localMemberPort is the one that is advertised by this member, while localMemberBindPort
            is the port to which this member is bound to.
        -->
        <!--
        <parameter name="localMemberBindPort">4001</parameter>
        -->

        <!--
        Properties specific to this member
        -->
        <parameter name="properties">
            <property name="backendServerURL" value="https://${hostName}:${httpsPort}/"/>
            <property name="mgtConsoleURL" value="https://${hostName}:${httpsPort}/"/>
 	    <!-- Manger Setup with Port Mapping-->
	    <!--property name="port.mapping.8280" value="9764"/>
            <property name="port.mapping.8243" value="9444"/>
            <property name="subDomain" value="mgt"/-->
            <property name="port.mapping.8280" value="<%= role.port.http %>"/>
            <property name="port.mapping.8243" value="<%= role.port.https %>"/>
	    <!-- Worker Setup-->
	    <!--property name="subDomain" value="worker"/-->
	        <!--eleks:info: we are not going to use subdomains-->
            <!--property name="subDomain" value="<%= clustering['sub_domain'] %>"/-->
        </parameter>

        <!--
           The list of static or well-known members. These entries will only be valid if the
           "membershipScheme" above is set to "wka"
        -->

        <!--
        Enable the groupManagement entry if you need to run this node as a cluster manager.
        Multiple application domains with different GroupManagementAgent implementations
        can be defined in this section.
        -->
        <groupManagement enable="false">
            <applicationDomain name="wso2.esb.domain"
                               description="ESB group"
                               agent="org.wso2.carbon.core.clustering.hazelcast.HazelcastGroupManagementAgent"
                               subDomain="worker"
                               port="2222"/>
        </groupManagement>
    </clustering>

    <!-- ================================================= -->
    <!--                   Transactions                    -->
    <!-- ================================================= -->

    <!--
        Uncomment and configure the following section to enable transactions support 
    -->
    <!--<transaction timeout="30000">
        <parameter name="java.naming.factory.initial">org.apache.activemq.jndi.ActiveMQInitialContextFactory</parameter>
        <parameter name="java.naming.provider.url">tcp://localhost:61616</parameter>
        <parameter name="UserTransactionJNDIName">UserTransaction</parameter>
        <parameter name="TransactionManagerJNDIName">TransactionManager</parameter>
    </transaction>-->

    <!-- ================================================= -->
    <!--                    Phases                         -->
    <!-- ================================================= -->

    <phaseOrder type="InFlow">
        <!--  System pre defined phases       -->
        <!--
           The MsgInObservation phase is used to observe messages as soon as they are
           received. In this phase, we could do some things such as SOAP message tracing & keeping
           track of the time at which a particular message was received

           NOTE: This should be the very first phase in this flow
        -->
        <phase name="MsgInObservation">
	    <handler name="TraceMessageBuilderDispatchHandler"
                     class="org.apache.synapse.transport.passthru.util.TraceMessageBuilderDispatchHandler"/>
	</phase>
        <phase name="Validation"/>
        <phase name="Transport">
            <handler name="RequestURIBasedDispatcher"
                     class="org.apache.axis2.dispatchers.RequestURIBasedDispatcher">
                <order phase="Transport"/>
            </handler>
   	        <handler name="CarbonContextConfigurator"
                     class="org.wso2.carbon.mediation.initializer.handler.CarbonContextConfigurator"/>
            <handler name="RelaySecuirtyMessageBuilderDispatchandler"
                     class="org.apache.synapse.transport.passthru.util.RelaySecuirtyMessageBuilderDispatchandler"/>
            <handler name="SOAPActionBasedDispatcher"
                     class="org.apache.axis2.dispatchers.SOAPActionBasedDispatcher">
                <order phase="Transport"/>
            </handler>
            <!--handler name="SMTPFaultHandler"
                     class="org.wso2.carbon.core.transports.smtp.SMTPFaultHandler">
                <order phase="Transport"/>
            </handler-->
        </phase>
        <phase name="Addressing">
            <handler name="AddressingBasedDispatcher"
                     class="org.apache.axis2.dispatchers.AddressingBasedDispatcher">
                <order phase="Addressing"/>
            </handler>
        </phase>
        <phase name="Security"/>
        <phase name="PreDispatch">
            <!--Uncomment following handler to enable logging in ESB log UI-->
            <!--<handler name="TenantDomainSetter"-->
                     <!--class="org.wso2.carbon.utils.logging.handler.TenantDomainSetter"/>-->
        </phase>
        <phase name="Dispatch" class="org.apache.axis2.engine.DispatchPhase">
            <handler name="RequestURIBasedDispatcher"
                     class="org.apache.axis2.dispatchers.RequestURIBasedDispatcher"/>
            <handler name="SOAPActionBasedDispatcher"
                     class="org.apache.axis2.dispatchers.SOAPActionBasedDispatcher"/>
            <handler name="RequestURIOperationDispatcher"
                     class="org.apache.axis2.dispatchers.RequestURIOperationDispatcher"/>
            <handler name="SOAPMessageBodyBasedDispatcher"
                     class="org.apache.axis2.dispatchers.SOAPMessageBodyBasedDispatcher"/>

            <handler name="HTTPLocationBasedDispatcher"
                     class="org.apache.axis2.dispatchers.HTTPLocationBasedDispatcher"/>
            <handler name="MultitenantDispatcher"
                     class="org.wso2.carbon.tenant.dispatcher.MultitenantDispatcher"/>
            <handler name="SynapseDispatcher"
                     class="org.apache.synapse.core.axis2.SynapseDispatcher"/>
            <handler name="SynapseMustUnderstandHandler"
                     class="org.apache.synapse.core.axis2.SynapseMustUnderstandHandler"/>
        </phase>
        <!--  System pre defined phases       -->
        <phase name="RMPhase"/>
        <phase name="OpPhase"/>
        <phase name="AuthPhase"/>
        <phase name="MUPhase"/>
        <!-- After Postdispatch phase module author or or service author can add any phase he want -->
        <phase name="OperationInPhase"/>
    </phaseOrder>

    <phaseOrder type="OutFlow">
        <!-- Handlers related to unified-endpoint component are added to the UEPPhase -->
        <phase name="UEPPhase" />
        <!--      user can add his own phases to this area  -->
        <phase name="RMPhase"/>
        <phase name="MUPhase"/>
        <phase name="OpPhase"/>
        <phase name="OperationOutPhase"/>
        <!--system predefined phase-->
        <!--these phase will run irrespective of the service-->
        <phase name="PolicyDetermination"/>
        <phase name="PTSecurityOutPhase">
		<handler name="RelaySecuirtyMessageBuilderDispatchandler"
                     class="org.apache.synapse.transport.passthru.util.RelaySecuirtyMessageBuilderDispatchandler"/>
	    </phase>
        <phase name="MessageOut"/>
        <phase name="Security"/>

        <!--
           The MsgOutObservation phase is used to observe messages just before the
           responses are sent out. In this phase, we could do some things such as SOAP message
           tracing & keeping track of the time at which a particular response was sent.

           NOTE: This should be the very last phase in this flow
        -->
        <phase name="MsgOutObservation"/>
    </phaseOrder>

    <phaseOrder type="InFaultFlow">
        <!--
           The MsgInObservation phase is used to observe messages as soon as they are
           received. In this phase, we could do some things such as SOAP message tracing & keeping
           track of the time at which a particular message was received

           NOTE: This should be the very first phase in this flow
        -->
        <phase name="MsgInObservation"/>
        <phase name="Validation"/>
        <phase name="Transport">
            <handler name="RequestURIBasedDispatcher"
                     class="org.apache.axis2.dispatchers.RequestURIBasedDispatcher">
                <order phase="Transport"/>
            </handler>
            <handler name="SOAPActionBasedDispatcher"
                     class="org.apache.axis2.dispatchers.SOAPActionBasedDispatcher">
                <order phase="Transport"/>
            </handler>
        </phase>
        <phase name="Addressing">
            <handler name="AddressingBasedDispatcher"
                     class="org.apache.axis2.dispatchers.AddressingBasedDispatcher">
                <order phase="Addressing"/>
            </handler>
        </phase>
        <phase name="Security"/>
        <phase name="PreDispatch"/>
        <phase name="Dispatch" class="org.apache.axis2.engine.DispatchPhase">
            <handler name="RequestURIBasedDispatcher"
                     class="org.apache.axis2.dispatchers.RequestURIBasedDispatcher"/>
            <handler name="SOAPActionBasedDispatcher"
                     class="org.apache.axis2.dispatchers.SOAPActionBasedDispatcher"/>
            <handler name="RequestURIOperationDispatcher"
                     class="org.apache.axis2.dispatchers.RequestURIOperationDispatcher"/>
            <handler name="SOAPMessageBodyBasedDispatcher"
                     class="org.apache.axis2.dispatchers.SOAPMessageBodyBasedDispatcher"/>

            <handler name="HTTPLocationBasedDispatcher"
                     class="org.apache.axis2.dispatchers.HTTPLocationBasedDispatcher"/>
        </phase>
        <!--      user can add his own phases to this area  -->
        <phase name="RMPhase"/>
        <phase name="OpPhase"/>
        <phase name="MUPhase"/>
        <phase name="OperationInFaultPhase"/>
    </phaseOrder>

    <phaseOrder type="OutFaultFlow">
        <!-- Handlers related to unified-endpoint component are added to the UEPPhase -->
        <phase name="UEPPhase" />
        <!--      user can add his own phases to this area  -->
        <phase name="RMPhase"/>
        <!-- Must Understand Header processing phase -->
        <phase name="MUPhase"/>
        <phase name="OperationOutFaultPhase"/>
        <phase name="PolicyDetermination"/>
        <phase name="MessageOut"/>
        <phase name="Security"/>
	<phase name="Transport"/>
        <!--
           The MsgOutObservation phase is used to observe messages just before the
           responses are sent out. In this phase, we could do some things such as SOAP message
           tracing & keeping track of the time at which a particular response was sent.

           NOTE: This should be the very last phase in this flow
        -->
        <phase name="MsgOutObservation"/>
    </phaseOrder>

</axisconfig>
