<%
/*<!--
 ~ Copyright (c) WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 ~
 ~ Licensed under the Apache License, Version 2.0 (the "License");
 ~ you may not use this file except in compliance with the License.
 ~ You may obtain a copy of the License at
 ~
 ~      http://www.apache.org/licenses/LICENSE-2.0
 ~
 ~ Unless required by applicable law or agreed to in writing, software
 ~ distributed under the License is distributed on an "AS IS" BASIS,
 ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 ~ See the License for the specific language governing permissions and
 ~ limitations under the License.
 -->*/

var log = new Log();
var encoder = require("/assets/encoder.js"),
        process = require('process'),
        auth = session.get('auth'),
        roles = session.get('roles');
var carbon = require('carbon');
var i18n = require("i18n");
var localeResourcesBasePath ="../config/locales/";
i18n.init(request,localeResourcesBasePath);


var data = application.get('appConfig');
var bpsHost = application.get('bpsHost');
var bpsPort = application.get('bpsPort');
// httpUrl is used for the bpmn rest API
var httpUrl = application.get('httpUrl');

var httpServiceUrl = application.get('httpServiceUrl');

var bpsTenantID = application.get('bpsTenantID');
var bpsTenantDomain = application.get('bpsTenantDomain');
//bpsTenantUrlPart is used for the bpmn rest API
var bpsTenantUrlPart = application.get('bpsTenantUrlPart'); //this holds the tenant part of the bps url
//bpsTenantServiceUrl is used  as the service Url
var bpsTenantServiceUrl = application.get('bpsTenantServiceUrl');

if (httpUrl == null || httpUrl === "") {

    appConfig = require('../config/config.json');
    application.put('appConfig', appConfig);

    //Retrieve configuration
    bpsHost = appConfig.server.bpsHost;
    bpsPort = appConfig.server.bpsPort;
    bpsTenantID = appConfig.server.bpsTenantId;
    bpsTenantDomain = appConfig.server.bpsTenantDomain;
    data = appConfig;

    if(bpsHost == null || bpsHost === "" || bpsPort == null || bpsPort === "") {
        //retrieve host name and the port from the deployed server assuming it's a BPS
        log.info('Starting BPMN-explorer in default configuration');
        var process = require("process");
        bpsHost = process.getProperty('carbon.local.ip');
        bpsPort = process.getProperty('mgt.transport.https.port');
    }

    if (bpsTenantDomain.length > 0) {
        //Used for the REST api
        bpsTenantUrlPart = "/t/" + bpsTenantDomain + "/webapps";
        bpsTenantServiceUrl = "/t/" + bpsTenantDomain;
    } else {
        bpsTenantUrlPart = "";
        bpsTenantServiceUrl = "";
    }

    application.put('bpsTenantUrlPart', bpsTenantUrlPart);
    application.put('bpsTenantDomain', bpsTenantDomain);
    application.put('bpsTenantServiceUrl',bpsTenantServiceUrl);

    if (bpsTenantID.length > 0) {
        application.put('bpsTenantID', bpsTenantID);
    } else {
        //assume super tenant
        bpsTenantID = '-1234';
        application.put('bpsTenantID', bpsTenantID);

    }

    //retrieve explorer deployed server
    var carbon = require('carbon');
    var serverAddress = carbon.server.address('https');


    httpUrl = "https://"+ bpsHost+ ":"+ bpsPort + bpsTenantUrlPart;
    application.put('httpUrl', httpUrl);
    application.put('bpsHost', bpsHost);
    application.put('bpsPort', bpsPort);
    application.put('serverAddress', serverAddress);

    httpServiceUrl = "https://"+ bpsHost+ ":"+ bpsPort + bpsTenantServiceUrl;
    application.put('httpServiceUrl', httpServiceUrl);



    if(log.isDebugEnabled()) {
        log.info("BPS server host : " + bpsHost);
        log.info("BPS server port : " + bpsPort);
        log.info("BPS server bpsTenantID : " + bpsTenantID);
        log.info("BPS server bpsTenantDomain : " + bpsTenantDomain);
    }

}

if(log.isDebugEnabled()) {
    log.debug("BPS URL:"+ httpUrl);
}

//Following variable were used to highlight current page which user is currently in.
//these were set as 'active' at each corresponding task Model
var dashboardNavActive = ''; //Dashboard veiw [updated at statsModel and refered at navigation.jag]
var myTasksNavActive = ''; //My Tasks veiw [updated at myTasksModel, refered at navigation.jag]
var claimableTasksNavActive = ''; //Claimable Tasks view [updated at claimableTaskModel, refered at navigation.jag]
var completedTasksNavActive = ''; // Completed task view [updated at historicTasksModel, refered at navigation.jag]
var processesNavActive = ''; // Processes view [updated at myTasksModel, refered at navigation.jag]
var searchNavActive = ''; // Search view [updated at searchModel, refered at navigation.jag]
var reportNavActive = ''; //Report view [updated at reportModel and refered at navigation.jag]

var errorDisplayEnable = 'hidden'; //This variable is used to display #commonErrorSection section in each view
// errorDisplayEnable = '' to display
var commonErrorMessage = null; //Common error message if exists


//START COMMON FUNCTIONS

/**
 * Function to get common error message display content
 */
function getCommonErrorContent (errorMsg) {
    return errorMsg   + '<br><br> <div align="right">'
            + ' <button class="btn btn-info" onclick="window.history.back();">&lt;&lt; Go back to previous page</button> '
            + ' <a class="btn btn-info" href="stats">Go to home</a></div>';
}
%>
