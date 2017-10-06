#
# Copyright (c) 2013, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
#
# WSO2 Inc. licenses this file to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

PDP.Enable=true
PAP.Enable=true
PDP.DecisionCaching.Enable=true 
#cache intervals are in seconds
PDP.DecisionCaching.CachingInterval=300
PDP.AttributeCaching.Enable=true 
PDP.AttributeCaching.CachingInterval=300
PDP.ResourceCaching.Enable=true 
PDP.ResourceCaching.CachingInterval=300
PDP.SchemaValidation.Enable=true
PDP.Balana.Config.Enable=false
PDP.Multiple.Decision.Profile.Enable=true
PDP.Global.Policy.Combining.Algorithm=urn:oasis:names:tc:xacml:3.0:policy-combining-algorithm:deny-overrides
PAP.Policy.Add.Start.Enable=true
#PAP.Policy.Add.Start.Policy.File.Path=
PAP.Items.Per.Page=10
PDP.Registry.Level.Policy.Cache.Clear=false
PDP.PolicyCaching.CachingInterval=100
Entitlement.Engine.CachingInterval=100000
PDP.References.MaxPolicyEntries=3000

 
#PDP.Extensions.Extension.1=your.extension.class.name


#PDP.Policy.Store=org.wso2.carbon.identity.entitlement.policy.store.CarbonRegistryPolicyStore
 
PIP.AttributeDesignators.Designator.1=org.wso2.carbon.identity.entitlement.pip.DefaultAttributeFinder
PIP.AttributeDesignators.Designator.2=org.wso2.carbon.identity.application.authz.xacml.pip.AuthenticationContextAttributePIP
PIP.ResourceFinders.Finder.1=org.wso2.carbon.identity.entitlement.pip.DefaultResourceFinder
 
PAP.Entitlement.Data.Finder.1=org.wso2.carbon.identity.entitlement.pap.CarbonEntitlementDataFinder
PAP.Policy.Publisher.Module.1=org.wso2.carbon.identity.entitlement.policy.publisher.CarbonBasicPolicyPublisherModule
#PAP.Policy.Post.Publisher.Module.1=
#PAP.Policy.Publisher.Verification.Handler=
PAP.Policy.Version.Module=org.wso2.carbon.identity.entitlement.policy.version.DefaultPolicyVersionManager
PAP.Status.Data.Handler.1=org.wso2.carbon.identity.entitlement.SimplePAPStatusDataHandler

PDP.Policy.Finder.1=org.wso2.carbon.identity.entitlement.policy.store.RegistryPolicyStoreManageModule
#PDP.Policy.Collection
PDP.Policy.Store.Module=org.wso2.carbon.identity.entitlement.policy.store.RegistryPolicyStoreManageModule
PDP.Policy.Data.Store.Module=org.wso2.carbon.identity.entitlement.policy.store.DefaultPolicyDataStore

# Properties needed for each extension.
# org.wso2.carbon.identity.entitlement.pip.DefaultAttributeFinder.1=name,value
# org.wso2.carbon.identity.entitlement.pip.DefaultAttributeFinder.2=name,value
# org.wso2.carbon.identity.entitlement.pip.DefaultResourceFinder.1=name.value
# org.wso2.carbon.identity.entitlement.pip.DefaultResourceFinder.2=name,value
# org.wso2.carbon.identity.entitlement.policy.CarbonPolicyMetaDataFinder.1=name,value
# org.wso2.carbon.identity.entitlement.policy.CarbonPolicyMetaDataFinder.2=name,value
