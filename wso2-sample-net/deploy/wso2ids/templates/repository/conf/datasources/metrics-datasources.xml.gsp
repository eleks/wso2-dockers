<?xml version="1.0" encoding="utf-8"?>
<datasources-configuration xmlns:svns="http://org.wso2.securevault/configuration">

    <providers>
        <provider>org.wso2.carbon.ndatasource.rdbms.RDBMSDataSourceReader</provider>
    </providers>

    <datasources>
<% metrics_datasources.each{dsn, ds-> context.render("/datasource.gspx/RDBMS.gspx", [out:out, dsn:dsn, ds:ds]) } %>

        <!-- MySQL -->
        <!--
        <datasource>
            <name>WSO2_METRICS_DB</name>
            <description>The MySQL datasource used for WSO2 Carbon Metrics</description>
            <jndiConfig>
                <name>jdbc/WSO2MetricsDB</name>
            </jndiConfig>
            <definition type="RDBMS">
                <configuration>
                    <driverClassName>com.mysql.jdbc.Driver</driverClassName>
                    <url>jdbc:mysql://localhost/wso2_metrics</url>
                    <username>root</username>
                    <password>root</password>
                    <maxActive>50</maxActive>
                    <maxWait>60000</maxWait>
                    <minIdle>5</minIdle>
                    <testOnBorrow>true</testOnBorrow>
                    <validationQuery>SELECT 1</validationQuery>
                    <validationInterval>30000</validationInterval>
                    <defaultAutoCommit>true</defaultAutoCommit>
                </configuration>
            </definition>
        </datasource>
        -->

        <!-- MSSQL (JTDS Driver) -->
        <!--
        <datasource>
            <name>WSO2_METRICS_DB</name>
            <description>The MSSQL datasource used for WSO2 Carbon Metrics</description>
            <jndiConfig>
                <name>jdbc/WSO2MetricsDB</name>
            </jndiConfig>
            <definition type="RDBMS">
                <configuration>
                    <driverClassName>net.sourceforge.jtds.jdbc.Driver</driverClassName>
                    <url>jdbc:jtds:sqlserver://localhost:1433/wso2_metrics</url>
                    <username>sa</username>
                    <password>sa</password>
                    <maxActive>200</maxActive>
                    <maxWait>60000</maxWait>
                    <minIdle>5</minIdle>
                    <testOnBorrow>true</testOnBorrow>
                    <validationQuery>SELECT 1</validationQuery>
                    <validationInterval>30000</validationInterval>
                    <defaultAutoCommit>true</defaultAutoCommit>
                </configuration>
            </definition>
        </datasource>
        -->

        <!-- SQLServer XA -->
        <!--
        <datasource>
            <name>WSO2_METRICS_DB</name>
            <description>The SQLServer XA datasource used for WSO2 Carbon Metrics</description>
            <jndiConfig>
                <name>jdbc/WSO2MetricsDB</name>
            </jndiConfig>
            <definition type="RDBMS">
                <configuration>
                    <defaultAutoCommit>true</defaultAutoCommit>
                    <dataSourceClassName>com.microsoft.sqlserver.jdbc.SQLServerXADataSource</dataSourceClassName>
                    <dataSourceProps>
                        <property name="URL">jdbc:sqlserver://localhost/SQLExpress:1433</property>
                        <property name="databaseName">wso2_metrics</property>
                        <property name="user">sa</property>
                        <property name="password">sa</property>
                    </dataSourceProps>
                </configuration>
            </definition>
        </datasource>
        -->

        <!-- Oracle -->
        <!--
        <datasource>
            <name>WSO2_METRICS_DB</name>
            <description>The Oracle datasource used for WSO2 Carbon Metrics</description>
            <jndiConfig>
                <name>jdbc/WSO2MetricsDB</name>
            </jndiConfig>
            <definition type="RDBMS">
                <configuration>
                    <driverClassName>oracle.jdbc.OracleDriver</driverClassName>
                    <url>jdbc:oracle:thin:@localhost:1521/wso2_metrics</url>
                    <username>scott</username>
                    <password>tiger</password>
                    <maxActive>100</maxActive>
                    <maxWait>60000</maxWait>
                    <minIdle>5</minIdle>
                    <testOnBorrow>true</testOnBorrow>
                    <validationQuery>SELECT 1 FROM DUAL</validationQuery>
                    <validationInterval>30000</validationInterval>
                    <defaultAutoCommit>true</defaultAutoCommit>
                    <databaseProps>
                        <property name="SetFloatAndDoubleUseBinary">true</property>
                    </databaseProps>
                </configuration>
            </definition>
        </datasource>
        -->
    </datasources>

</datasources-configuration>
