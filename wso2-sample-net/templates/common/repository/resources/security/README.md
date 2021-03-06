## goal

- generate wso2carbon.jks JKS keystore for `*.docker.local`
- create CA keypair for custom Certificate authority
- sign the certificate in keystore with CA certificate
- import public CA certificate into truststore

## tool

all above teoretically possible to do with keytool + openssl tools
but for simplicity I used http://keystore-explorer.org/

## files in this directory

> all the keystores secured with default wso2 password: `wso2carbon`

- `ca.jks` the keystore with keypair to be a CA (Certificate authority) certificate
- `wso2carbon.jks` the keystore with primary keypair to be used for wso2 servers signed with CA certificate 
- `client-truststore.jks` the truststore. here we imported public part of CA certificate
- `extension.tpl` template with extensions for certificates. you can import and modify them in `keystore-explorer`
- `_.docker.local.csr` temporary intermediate file - the request to sign certificate
- `_.docker.local.p7r` temporary intermediate file - the reply to sign certificate request
- `ca.docker.local.cer` public CA certificate to be imported into client's truststore (browsers, etc.)

## steps

#### generate CA keystore with key-pair
normally you don't need to regenerate this certificate if you trust it

don't forget to set CA=TRUE in Basic Constraints

![generate CA keystore with key-pair](./readme-img/01-gen-ca.png)

![generate CA keystore with key-pair](./readme-img/01-gen-ca-02.png)


#### generate wso2carbon.jks with name and alternate names we need
> the key alias must correspond to one you specified in `carbon.xml` in `Security.KeyStore.KeyAlias`. by default it's `wso2carbon`.
> or to the tenant domain name if you are in multitenant mode. domain: `test.com` -> alias: `test-com`

- CN: `*.docker.local`
- Extensions: SAN:
 - `*.docker.local` for our subnet names
 - `192.168.99.100` as default ip for default local docker machine. add it as IP and as a DNS - required by some hostname verifiers..
 - `localhost` for localhost access

> you can import extension from the `extension.tpl` template

![generate wso2carbon.jks with name and alternate names we need](./readme-img/02-gen-wso2carbon.jks.png)

#### generate request for signature 
![generate request for signature](./readme-img/03-sign-req.png)

#### include extension into request 
![generate request for signature](./readme-img/03-sign-req-02.png)

#### sign the request with CA certificate

> don't forget to specify extension in reply 

![sign the request with CA certificate](./readme-img/04-sign.png)

#### import the signature reply into wso2carbon.jks
![import the signature reply into wso2carbon.jks](./readme-img/05-imp-sign-repl.png)

#### wso2carbon.jks result
![wso2carbon.jks result](./readme-img/06-result.png)

#### export and import public CA certificate into truststore
> NOTE: this is not necessary if you did not change the CA certificate

![export public CA certificate](./readme-img/07-ca-exp-01.png)

![export public CA certificate - 2](./readme-img/07-ca-exp-02.png)

![import public CA certificate into truststore](./readme-img/08-ca-imp-trust.png)

#### extort and import wso2carbon certificate into truststore

This part is required if you use sso saml for auth and goind to validate signature of the response

> **NOTE:** if you are going to use sso saml with wso2is to sign in to other wso2carbon servers 
> you have to import this CA certificate with alias `wso2carbon` or change the parameters of connection.
> For example in the wso2is-analytics/portal there is a `repository/deployment/server/jaggeryapps/portal/configs/designer.json` 
> config file where the alias defined as wso2carbon and it requires to validate signature against it.

![extort wso2carbon certificate](./readme-img/09-wso2carbon-exp.png)



