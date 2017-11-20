{
    "displayName":"BPMN Explorer", 
    "welcomeFiles":["/controller/loginController.jag"],
    "logLevel": "info",
    "errorPages": {
        "500": "/error500.html",
        "404": "/error404.html"
    },
    "securityConstraints": [{
        "securityConstraint": {
            "webResourceCollection": {
                "name": "bpmn-explorer",
                "urlPatterns": [
                    "/controller/*",
                    "/model/*",
                    "/template/*",
                    "/assets/*"
                ],
                "methods": ["GET", "POST", "PUT", "DELETE"]
            },
            "authRoles": ["admin"]
         }
    }],
    "loginConfig": {
        "authMethod": "BASIC"
    },
    "securityRoles": ["admin", "everyone"],
    "urlMappings":[       
		{
            "url":"/login/*",
            "path":"/controller/loginController.jag"
        },
        {
            "url":"/myTasks/*",
            "path":"/controller/myTasksController.jag"
        },
        {
            "url":"/task/*",
            "path":"/controller/taskController.jag"
        },
        {
            "url":"/auth/*",
            "path":"/controller/authenticator.jag"
        },
        {
            "url":"/logout/*",
            "path":"/controller/logout.jag"
        },
        {
            "url":"/send/*",
            "path":"/controller/communication.jag"
        },
        {
            "url":"/process/*",
            "path":"/controller/processController.jag"
        },
        {
            "url":"/claimableTask/*",
            "path":"/controller/claimableTaskController.jag"
        },
        {
            "url":"/claimTask/*",
            "path":"/controller/claimTaskController.jag"
        },
        {
            "url":"/startProcess/*",
            "path":"/controller/startProcessController.jag"
        },
        {
            "url":"/historicTasks/*",
            "path":"/controller/historicTasksController.jag"
        },
        {
            "url":"/stats/*",
            "path":"/controller/statsController.jag"
        },
        {
            "url":"/completedTask/*",
            "path":"/controller/completedTaskController.jag"
        },
		{
            "url":"/search/*",
            "path":"/controller/searchController.jag"
        },
        {
             "url":"/reports/*",
             "path":"/controller/reportController.jag"
        },
        {
             "url":"/backendRequest/*",
             "path":"/controller/backendRequest.jag"
        }
    ]
}
