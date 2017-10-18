{
    "store": {
        "types": ["fs"]
    },
    "gadgetGeneration" :{
        "isCreateGadgetEnable": false,
        "ignoreProviders": ["rt"]
    },
    <% if( new Boolean(sso_authentication.disabled)) { %>
    "authentication": {
        "activeMethod": "basic",
        "methods": {
            "sso": {
                "attributes": {
                    "issuer": "portal",
                    "identityProviderURL": "https://localhost:9443/samlsso",
                    "responseSigningEnabled": true,
                    "validateAssertionValidityPeriod": true,
                    "validateAudienceRestriction": true,
                    "assertionSigningEnabled": true,
                    "acs": "https://localhost:9444/portal/acs",
                    "identityAlias": "wso2carbon",
                    "defaultNameIDPolicy": "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified",
                    "useTenantKey": false,
                    "isPassive": false
                }
            },
            "basic": {
                "attributes": {}
            }
        }
    },
    <% } else { %>
    "authentication": {
        "activeMethod": "sso",
        "methods": {
            "sso": {
                "attributes": {
                    "issuer": "<%= sso_authentication.service_provider_id %>",
                    "identityProviderURL": "<%= sso_authentication['sso_service_url'] %>",
                    "responseSigningEnabled": true,
                    "validateAssertionValidityPeriod": true,
                    "validateAudienceRestriction": true,
                    "assertionSigningEnabled": true,
                    "acs": "<%= 'https://' + role.host + ':' + role.port.https + '/portal/acs' %>",
                    "identityAlias": "wso2carbon",
                    "defaultNameIDPolicy": "urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified",
                    "useTenantKey": false,
                    "isPassive": false
                }
            },
            "basic": {
                "attributes": {}
            }
        }
    },
    <% } %>
    "authorization": {
        "activeMethod": "",
        "methods": {
            "oauth": {
                "attributes": {
                    "idPServer": "%https.ip%/oauth2/token",
                    "dynamicClientProperties": {
                        "callbackUrl": "%https.ip%/portal",
                        "clientName": "portal",
                        "owner": "admin",
                        "applicationType": "JaggeryApp",
                        "grantType": "password refresh_token urn:ietf:params:oauth:grant-type:saml2-bearer",
                        "saasApp": false,
                        "dynamicClientRegistrationEndPoint": "%https.ip%/dynamic-client-web/register/",
                        "tokenScope": "Production"
                    }
                }
            }
        }
    },
    "designers": [
        "Internal/everyone"
    ],
    "tenantPrefix": "/t",
    "shareStore": false,
    "theme": "basic",
    "cacheTimeoutSeconds": "5",
    "cacheSizeBytes": "1073741824",
    "defaultDashboardRedirect": false,
    "isCreateGadgetEnable": true,
    "isSecureVaultEnabled" : false,
    "assets": {
        "gadget": {
            "fileSizeLimit": 5
        },
        "layout": {
            "fileSizeLimit": 1
        }
    },
    "oauth": {
        "username": "admin",
        "password": "admin"
    },
    "host": {
        "hostname": "",
        "port": "",
        "protocol": ""
    }
}
