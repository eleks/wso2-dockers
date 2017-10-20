<HumanTaskServerConfig xmlns="http://wso2.org/humantask/schema/server/config" xmlns:svns="http://org.wso2.securevault/configuration">
    <PersistenceConfig>
        <DataSource>bpsds</DataSource>
        <GenerateDdl>true</GenerateDdl>
        <ShowSql>false</ShowSql>
        <!--JNDIInitialContextFactory>com.sun.jndi.rmi.registry.RegistryContextFactory</JNDIInitialContextFactory>
        <JNDIProviderUrl>rmi://localhost:2199</JNDIProviderUrl-->
        <DAOConnectionFactoryClass>org.wso2.carbon.humantask.core.dao.jpa.openjpa.HumanTaskDAOConnectionFactoryImpl</DAOConnectionFactoryClass>
    </PersistenceConfig>
    <PeopleQueryEvaluatorConfig>
        <PeopleQueryEvaluatorClass>org.wso2.carbon.humantask.core.integration.CarbonUserManagerBasedPeopleQueryEvaluator</PeopleQueryEvaluatorClass>
    </PeopleQueryEvaluatorConfig>
    <TransactionManagerConfig>
        <TransactionManagerClass>org.apache.ode.il.EmbeddedGeronimoFactory</TransactionManagerClass>
    </TransactionManagerConfig>
    <SchedulerConfig>
        <MaxThreadPoolSize><%= scheduler_config_max_thread_pool_size %></MaxThreadPoolSize>
    </SchedulerConfig>
    <!--TaskCleanupConfig>
        <cronExpression>0 0 0/4 * * ?</cronExpression>
        <statuses>COMPLETED,OBSOLETE</statuses>
    </TaskCleanupConfig-->
    <!--TaskEventListeners>
        <ClassName>ClassName</ClassName>
        <ClassName>ClassName</ClassName>
    </TaskEventListeners-->
    <UIRenderingEnabled>true</UIRenderingEnabled>
    <HumanTaskCoordination>
        <!-- HumanTask Coordination configuration -->
        <TaskCoordinationEnabled>false</TaskCoordinationEnabled>

        <!--Task Engine's protocol handler authentication -->
        <RegistrationServiceAuthentication>
            <Username>admin</Username>
            <Password>admin</Password>
        </RegistrationServiceAuthentication>

        <!-- Set TaskRegistrationEnabled to true, for Register tasks at task parent's Registration Service. -->
        <TaskRegistrationEnabled>false</TaskRegistrationEnabled>

        <!--Uncomment if task engines are Clustered and set LoadBalancerURL -->
        <!--<ClusteredTaskEngines>
            <LoadBalancerURL>https://bps.loadbalancer-url.com</LoadBalancerURL>
        </ClusteredTaskEngines> -->
    </HumanTaskCoordination>
    <!-- Enable to perform HT operations by BusinessAdministrator -->
    <EnableTaskOperationsForBusinessAdministrator>false</EnableTaskOperationsForBusinessAdministrator>

    <!-- Enable Disable Caching -->
    <% if (bps.enable_humantask_caching) { %>
    <CacheConfiguration>
		<EnableCaching><%= bps.enable_humantask_caching %></EnableCaching>
    </CacheConfiguration>
    <% } %>
    <EnableTaskValidationBeforeDeployment>true</EnableTaskValidationBeforeDeployment>
    <EnableEMailNotification>false</EnableEMailNotification>
    <EnableSMSNotification>false</EnableSMSNotification>
</HumanTaskServerConfig>
