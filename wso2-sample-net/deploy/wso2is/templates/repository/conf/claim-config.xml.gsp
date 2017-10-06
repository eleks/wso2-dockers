<!--
 ~ Copyright (c) 2005-2011, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 ~
 ~ WSO2 Inc. licenses this file to you under the Apache License,
 ~ Version 2.0 (the "License"); you may not use this file except
 ~ in compliance with the License.
 ~ You may obtain a copy of the License at
 ~
 ~    http://www.apache.org/licenses/LICENSE-2.0
 ~
 ~ Unless required by applicable law or agreed to in writing,
 ~ software distributed under the License is distributed on an
 ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 ~ KIND, either express or implied.  See the License for the
 ~ specific language governing permissions and limitations
 ~ under the License.
 -->
<ClaimConfig>
	<Dialects>
		<Dialect dialectURI="http://wso2.org/claims">
			<Claim>
				<ClaimURI>http://wso2.org/claims/givenname</ClaimURI>
				<DisplayName>First Name</DisplayName>
				<AttributeID>givenName</AttributeID>
				<Description>First Name</Description>
				<Required />
				<DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/lastname</ClaimURI>
				<DisplayName>Last Name</DisplayName>
				<AttributeID>sn</AttributeID>
				<Description>Last Name</Description>
				<Required />
				<DisplayOrder>2</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/organization</ClaimURI>
				<DisplayName>Organization</DisplayName>
				<AttributeID>organizationName</AttributeID>
				<Description>Organization</Description>
				<DisplayOrder>3</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/streetaddress</ClaimURI>
				<DisplayName>Address</DisplayName>
				<AttributeID>streetAddress</AttributeID>
				<Description>Address</Description>
				<DisplayOrder>4</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/country</ClaimURI>
				<DisplayName>Country</DisplayName>
				<AttributeID>country</AttributeID>
				<Description>Country</Description>
				<DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/emailaddress</ClaimURI>
				<DisplayName>Email</DisplayName>
				<AttributeID>mail</AttributeID>
				<Description>Email Address</Description>
				<Required />
				<DisplayOrder>6</DisplayOrder>
				<SupportedByDefault />
                <RegEx>^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$</RegEx>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/telephone</ClaimURI>
				<DisplayName>Telephone</DisplayName>
				<AttributeID>telephoneNumber</AttributeID>
				<Description>Telephone</Description>
				<DisplayOrder>7</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/mobile</ClaimURI>
				<DisplayName>Mobile</DisplayName>
				<AttributeID>mobile</AttributeID>
				<Description>Mobile</Description>
				<DisplayOrder>8</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/im</ClaimURI>
				<DisplayName>IM</DisplayName>
				<AttributeID>im</AttributeID>
				<Description>IM</Description>
				<DisplayOrder>9</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/url</ClaimURI>
				<DisplayName>URL</DisplayName>
				<AttributeID>url</AttributeID>
				<Description>URL</Description>
				<DisplayOrder>10</DisplayOrder>
				<SupportedByDefault />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/gender</ClaimURI>
				<DisplayName>Gender</DisplayName>
				<AttributeID>gender</AttributeID>
				<Description>Gender</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/title</ClaimURI>
				<DisplayName>Title</DisplayName>
				<AttributeID>title</AttributeID>
				<Description>Title</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/role</ClaimURI>
				<DisplayName>Role</DisplayName>
				<AttributeID>role</AttributeID>
				<Description>Role</Description>
	            		<SupportedByDefault />
				<ReadOnly />
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/postalcode</ClaimURI>
				<DisplayName>Postal Code</DisplayName>
				<AttributeID>postalcode</AttributeID>
				<Description>Postal Code</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/locality</ClaimURI>
				<DisplayName>Locality</DisplayName>
				<AttributeID>local</AttributeID>
				<Description>Locality</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/region</ClaimURI>
				<DisplayName>Region</DisplayName>
				<AttributeID>region</AttributeID>
				<Description>Region</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/dob</ClaimURI>
				<DisplayName>Birth Date</DisplayName>
				<AttributeID>dateOfBirth</AttributeID>
				<Description>Birth Date</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/nickname</ClaimURI>
				<DisplayName>Nick Name</DisplayName>
				<AttributeID>nickName</AttributeID>
				<Description>Nick Name</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/stateorprovince</ClaimURI>
				<DisplayName>State</DisplayName>
				<AttributeID>stateOrProvinceName</AttributeID>
				<Description>State</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/otherphone</ClaimURI>
				<DisplayName>Other Phone</DisplayName>
				<AttributeID>otherPhone</AttributeID>
				<Description>Other Phone</Description>
		    </Claim>
		    <Claim>
				<ClaimURI>http://wso2.org/claims/fullname</ClaimURI>
				<DisplayName>Full Name</DisplayName>
				<AttributeID>cn</AttributeID>
				<Description>Full Name</Description>
		    </Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/username</ClaimURI>
				<DisplayName>Username</DisplayName>
				<AttributeID>uid</AttributeID>
				<Description>Username</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/userid</ClaimURI>
				<DisplayName>User ID</DisplayName>
				<AttributeID>scimId</AttributeID>
				<Description>Unique ID of the user</Description>
				<ReadOnly/>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/externalid</ClaimURI>
				<DisplayName>External User ID</DisplayName>
				<AttributeID>externalId</AttributeID>
				<Description>Unique ID of the user used in external systems</Description>
				<ReadOnly/>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/created</ClaimURI>
				<DisplayName>Created Time</DisplayName>
				<AttributeID>createdDate</AttributeID>
				<Description>Created timestamp of the user</Description>
				<ReadOnly/>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/modified</ClaimURI>
				<DisplayName>Last Modified Time</DisplayName>
				<AttributeID>lastModifiedDate</AttributeID>
				<Description>Last Modified timestamp of the user</Description>
				<ReadOnly/>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/location</ClaimURI>
				<DisplayName>Location</DisplayName>
				<AttributeID>location</AttributeID>
				<Description>Location</Description>
			</Claim>

			<Claim>
				<ClaimURI>http://wso2.org/claims/formattedName</ClaimURI>
				<DisplayName>Name - Formatted Name</DisplayName>
				<AttributeID>formattedName</AttributeID>
				<Description>Formatted Name</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/middleName</ClaimURI>
				<DisplayName>Middle Name</DisplayName>
				<AttributeID>middleName</AttributeID>
				<Description>Middle Name</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/honorificPrefix</ClaimURI>
				<DisplayName>Name - Honoric Prefix</DisplayName>
				<AttributeID>honoricPrefix</AttributeID>
				<Description>Honoric Prefix</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/honorificSuffix</ClaimURI>
				<DisplayName>Name - Honoric Suffix</DisplayName>
				<AttributeID>honoricSuffix</AttributeID>
				<Description>Honoric Suffix</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/userType</ClaimURI>
				<DisplayName>User Type</DisplayName>
				<AttributeID>userType</AttributeID>
				<Description>User Type</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/preferredLanguage</ClaimURI>
				<DisplayName>Preferred Language</DisplayName>
				<AttributeID>preferredLanguage</AttributeID>
				<Description>Preferred Language</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/local</ClaimURI>
				<DisplayName>Local</DisplayName>
				<AttributeID>local</AttributeID>
				<Description>Local</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/timeZone</ClaimURI>
				<DisplayName>Time Zone</DisplayName>
				<AttributeID>timeZone</AttributeID>
				<Description>Time Zone</Description>
			</Claim>

			<Claim>
				<ClaimURI>http://wso2.org/claims/emails.work</ClaimURI>
				<DisplayName>Emails - Work Email</DisplayName>
				<AttributeID>workEmail</AttributeID>
				<Description>Work Email</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/emails.home</ClaimURI>
				<DisplayName>Emails - Home Email</DisplayName>
				<AttributeID>homeEmail</AttributeID>
				<Description>Home Email</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/emails.other</ClaimURI>
				<DisplayName>Emails - Other Email</DisplayName>
				<AttributeID>otherEmail</AttributeID>
				<Description>Other Email</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/phoneNumbers</ClaimURI>
				<DisplayName>Phone Numbers</DisplayName>
				<AttributeID>phoneNumbers</AttributeID>
				<Description>Phone Numbers</Description>
				<RegEx>^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$</RegEx>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/phoneNumbers.home</ClaimURI>
				<DisplayName>Phone Numbers - Home Phone Number</DisplayName>
				<AttributeID>homePhone</AttributeID>
				<Description>Home Phone</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/phoneNumbers.work</ClaimURI>
				<DisplayName>Phone Numbers - Work Phone Number</DisplayName>
				<AttributeID>workPhone</AttributeID>
				<Description>Work Phone</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/phoneNumbers.fax</ClaimURI>
				<DisplayName>Phone Numbers - Fax Number</DisplayName>
				<AttributeID>fax</AttributeID>
				<Description>Fax Number</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/phoneNumbers.pager</ClaimURI>
				<DisplayName>Phone Numbers - Pager Number</DisplayName>
				<AttributeID>pager</AttributeID>
				<Description>Pager Number</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/phoneNumbers.other</ClaimURI>
				<DisplayName>Phone Numbers - Other</DisplayName>
				<AttributeID>otherPhoneNumber</AttributeID>
				<Description>Other Phone Number</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/gtalk</ClaimURI>
				<DisplayName>IM - Gtalk</DisplayName>
				<AttributeID>imGtalk</AttributeID>
				<Description>IM - Gtalk</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/skype</ClaimURI>
				<DisplayName>IM - Skype</DisplayName>
				<AttributeID>imSkype</AttributeID>
				<Description>IM - Skype</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/photos</ClaimURI>
				<DisplayName>Photo</DisplayName>
				<AttributeID>photos</AttributeID>
				<Description>Photo</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/photourl</ClaimURI>
				<DisplayName>Photo URIL</DisplayName>
				<AttributeID>photoUrl</AttributeID>
				<Description>Photo URL</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/thumbnail</ClaimURI>
				<DisplayName>Photo - Thumbnail</DisplayName>
				<AttributeID>thumbnail</AttributeID>
				<Description>Photo - Thumbnail</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/addresses</ClaimURI>
				<DisplayName>Address</DisplayName>
				<AttributeID>addresses</AttributeID>
				<Description>Address</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/addresses.formatted</ClaimURI>
				<DisplayName>Address - Formatted</DisplayName>
				<AttributeID>formattedAddress</AttributeID>
				<Description>Address - Formatted</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/streetaddress</ClaimURI>
				<DisplayName>Address - Street</DisplayName>
				<AttributeID>streetAddress</AttributeID>
				<Description>Address - Street</Description>
				<DisplayOrder>5</DisplayOrder>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/addresses.locality</ClaimURI>
				<DisplayName>Address - Locality</DisplayName>
				<AttributeID>localityAddress</AttributeID>
				<Description>Address - Locality</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/groups</ClaimURI>
				<DisplayName>Groups</DisplayName>
				<AttributeID>groups</AttributeID>
				<Description>Groups</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/verifyEmail</ClaimURI>
				<DisplayName>Verify Email</DisplayName>
				<AttributeID>manager</AttributeID>
				<Description>Temporary claim to invoke email verified feature</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/askPassword</ClaimURI>
				<DisplayName>Ask Password</DisplayName>
				<AttributeID>postOfficeBox</AttributeID>
				<Description>Temporary claim to invoke email ask Password feature</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/adminForcedPasswordReset</ClaimURI>
				<DisplayName>Force Password Reset</DisplayName>
				<AttributeID>departmentNumber</AttributeID>
				<Description>Temporary claim to invoke email force password feature</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/entitlements</ClaimURI>
				<DisplayName>Entitlements</DisplayName>
				<AttributeID>entitlements</AttributeID>
				<Description>Entitlements</Description>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:roles</ClaimURI>
				<DisplayName>Roles</DisplayName>
				<AttributeID>roles</AttributeID>
				<Description>Roles</Description>
				<DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/role</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/x509Certificates</ClaimURI>
				<DisplayName>X509Certificates</DisplayName>
				<AttributeID>x509Certificates</AttributeID>
				<Description>X509Certificates</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/failedPasswordRecoveryAttempts</ClaimURI>
				<DisplayName>Failed Password Recovery Attempts</DisplayName>
				<AttributeID>postalCode</AttributeID>
				<Description>Number of consecutive failed attempts done for password recovery</Description>
			</Claim>


		    <Claim>
				<ClaimURI>http://wso2.org/claims/primaryChallengeQuestion</ClaimURI>
				<DisplayName>Primary Challenge Question</DisplayName>
			<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>title</AttributeID>
				<Description>Primary Challenge Question</Description>
		    </Claim>
		    <Claim>
				<ClaimURI>http://wso2.org/claims/challengeQuestionUris</ClaimURI>
				<DisplayName>Challenge Question</DisplayName>
			<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>stateOrProvinceName</AttributeID>
				<Description>Challenge Question</Description>
		    </Claim>

		    <Claim>
				<ClaimURI>http://wso2.org/claims/oneTimePassword</ClaimURI>
				<DisplayName>One Time Password</DisplayName>
			<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>oneTimePassword</AttributeID>
				<Description>One Time Password</Description>
		    </Claim>
		    <Claim>
				<ClaimURI>http://wso2.org/claims/identity/accountLocked</ClaimURI>
				<DisplayName>Account Locked</DisplayName>
			<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>accountLock</AttributeID>
				<Description>Account Locked</Description>
		    </Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/emailVerified</ClaimURI>
				<DisplayName>Email Verified</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>postalAddress</AttributeID>
				<Description>Email Verified</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/accountDisabled</ClaimURI>
				<DisplayName>Account Disabled</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>ref</AttributeID>
				<Description>Account Disabled</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/failedLoginAttempts</ClaimURI>
				<DisplayName>Failed Login Attempts</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>failedLoginAttempts</AttributeID>
				<Description>Failed Login Attempts</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/failedLoginLockoutCount</ClaimURI>
				<DisplayName>Failed Lockout Count</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>employeeNumber</AttributeID>
				<Description>Failed Lockout Count</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/unlockTime</ClaimURI>
				<DisplayName>Unlock Time</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>unlockTime</AttributeID>
				<Description>Unlock Time</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/lastLoginTime</ClaimURI>
				<DisplayName>Last Login</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>lastLogonTime</AttributeID>
				<Description>Last Login Time</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/lastLogonTime</ClaimURI>
				<DisplayName>Last Logon</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>carLicense</AttributeID>
				<Description>Last Logon Time</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/identity/lastPasswordUpdateTime</ClaimURI>
				<DisplayName>Last Password Update</DisplayName>
				<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>businessCategory</AttributeID>
				<Description>Last Password Update Time</Description>
			</Claim>
		     <Claim>
				<ClaimURI>http://wso2.org/claims/challengeQuestion1</ClaimURI>
				<DisplayName>Challenge Question1</DisplayName>
			<!-- Proper attribute Id in your user store must be configured for this -->
				<AttributeID>firstChallenge</AttributeID>
				<Description>Challenge Question1</Description>

			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/challengeQuestion2</ClaimURI>
				<DisplayName>Challenge Question2</DisplayName>
			<!-- Proper attribute Id in your user store must be used configured for this -->
				<AttributeID>secondChallenge</AttributeID>
				<Description>Challenge Question2</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/displayName</ClaimURI>
				<DisplayName>Display Name</DisplayName>
				<AttributeID>displayName</AttributeID>
				<Description>Display Name</Description>
			</Claim>
			<Claim>
				<ClaimURI>http://wso2.org/claims/active</ClaimURI>
				<DisplayName>Active</DisplayName>
				<AttributeID>active</AttributeID>
				<Description>Status of the account</Description>
			</Claim>

		</Dialect>

		<Dialect dialectURI="http://schemas.xmlsoap.org/ws/2005/05/identity">
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname</ClaimURI>
				<DisplayName>First Name</DisplayName>
				<AttributeID>givenName</AttributeID>
				<Description>First Name</Description>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/givenname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nickname</ClaimURI>
				<DisplayName>Nick Name</DisplayName>
				<AttributeID>nickName</AttributeID>
				<Description>Nick Name</Description>
				<MappedLocalClaim>http://wso2.org/claims/nickname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname</ClaimURI>
				<DisplayName>Last Name</DisplayName>
				<AttributeID>sn</AttributeID>
				<Description>Last Name</Description>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/lastname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress</ClaimURI>
				<DisplayName>Email</DisplayName>
				<AttributeID>mail</AttributeID>
				<Description>Email Address</Description>
				<Required />
				<SupportedByDefault />
                <RegEx>^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$</RegEx>
				<MappedLocalClaim>http://wso2.org/claims/emailaddress</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/dateofbirth</ClaimURI>
				<DisplayName>DOB</DisplayName>
				<AttributeID>dateOfBirth</AttributeID>
				<Description>Date of Birth</Description>
				<MappedLocalClaim>http://wso2.org/claims/dob</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender</ClaimURI>
				<DisplayName>Gender</DisplayName>
				<AttributeID>gender</AttributeID>
				<Description>Gender</Description>
				<MappedLocalClaim>http://wso2.org/claims/gender</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country</ClaimURI>
				<DisplayName>Country</DisplayName>
				<AttributeID>country</AttributeID>
				<Description>Country</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/streetaddress</ClaimURI>
				<DisplayName>Street Address</DisplayName>
				<AttributeID>streetAddress</AttributeID>
				<Description>Street Address</Description>
				<MappedLocalClaim>http://wso2.org/claims/streetaddress</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/homephone</ClaimURI>
				<DisplayName>Home Phone</DisplayName>
				<AttributeID>homePhone</AttributeID>
				<Description>Home Phone</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/otherphone</ClaimURI>
				<DisplayName>Other Phone</DisplayName>
				<AttributeID>otherPhone</AttributeID>
				<Description>Other Phone</Description>
				<MappedLocalClaim>http://wso2.org/claims/otherphone</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/mobile</ClaimURI>
				<DisplayName>Mobile</DisplayName>
				<AttributeID>mobile</AttributeID>
				<Description>Mobile</Description>
				<MappedLocalClaim>http://wso2.org/claims/mobile</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/locality</ClaimURI>
				<DisplayName>Locality</DisplayName>
				<AttributeID>localityName</AttributeID>
				<Description>Locality</Description>
				<MappedLocalClaim>http://wso2.org/claims/locality</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/stateorprovince</ClaimURI>
				<DisplayName>State</DisplayName>
				<AttributeID>stateOrProvinceName</AttributeID>
				<Description>State</Description>
				<MappedLocalClaim>http://wso2.org/claims/stateorprovince</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/postalcode</ClaimURI>
				<DisplayName>Postalcode</DisplayName>
				<AttributeID>postalCode</AttributeID>
				<Description>Postalcode</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/postalcode</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/privatepersonalidentifier</ClaimURI>
				<AttributeID>privatePersonalIdentifier</AttributeID>
				<Description>PPID</Description>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
		</Dialect>

		<Dialect dialectURI="http://schema.openid.net/2007/05/claims">
			<Claim>
				<ClaimURI>nickname</ClaimURI>
				<DisplayName>First Name</DisplayName>
				<AttributeID>nickName</AttributeID>
				<Description>First Name</Description>
				<Required />
                                <DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/nickname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>fullname</ClaimURI>
				<DisplayName>Full Name</DisplayName>
				<AttributeID>cn</AttributeID>
				<Description>Full Name</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/fullname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>email</ClaimURI>
				<DisplayName>Email</DisplayName>
				<AttributeID>mail</AttributeID>
				<Description>Email Address</Description>
                                <DisplayOrder>3</DisplayOrder>
				<Required />
				<SupportedByDefault />
                <RegEx>^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$</RegEx>
				<MappedLocalClaim>http://wso2.org/claims/emailaddress</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>country</ClaimURI>
				<DisplayName>Country</DisplayName>
				<AttributeID>country</AttributeID>
				<Description>Country</Description>
                                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>timezone</ClaimURI>
				<DisplayName>Time Zone</DisplayName>
				<AttributeID>timeZone</AttributeID>
				<Description>Time Zone</Description>
                                <DisplayOrder>9</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>dob</ClaimURI>
				<DisplayName>DOB</DisplayName>
				<AttributeID>dateOfBirth</AttributeID>
				<Description>Date of Birth</Description>
                                <DisplayOrder>6</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/dob</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>postcode</ClaimURI>
				<DisplayName>Postalcode</DisplayName>
				<AttributeID>postalCode</AttributeID>
				<Description>Postalcode</Description>
                                <DisplayOrder>4</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>gender</ClaimURI>
				<DisplayName>Gender</DisplayName>
				<AttributeID>gender</AttributeID>
				<Description>Gender</Description>
                                <DisplayOrder>8</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/gender</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>language</ClaimURI>
				<DisplayName>Language</DisplayName>
				<AttributeID>prefferedLanguage</AttributeID>
				<Description>Language</Description>
                <DisplayOrder>7</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
		</Dialect>

		<Dialect dialectURI="http://axschema.org">
			<Claim>
				<ClaimURI>http://axschema.org/namePerson/first</ClaimURI>
				<DisplayName>Nick Name</DisplayName>
				<AttributeID>nickName</AttributeID>
				<Description>Nick Name</Description>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/nickname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/namePerson/last</ClaimURI>
				<DisplayName>Last Name</DisplayName>
				<AttributeID>sn</AttributeID>
				<Description>Last Name</Description>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/lastname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/contact/email</ClaimURI>
				<DisplayName>Email</DisplayName>
				<AttributeID>mail</AttributeID>
				<Description>Email Address</Description>
				<Required />
				<SupportedByDefault />
                <RegEx>^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$</RegEx>
				<MappedLocalClaim>http://wso2.org/claims/emailaddress</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/contact/country/home</ClaimURI>
				<DisplayName>Country</DisplayName>
				<AttributeID>country</AttributeID>
				<Description>Country</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/pref/timezone</ClaimURI>
				<DisplayName>Time Zone</DisplayName>
				<AttributeID>timeZone</AttributeID>
				<Description>Time Zone</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/birthDate</ClaimURI>
				<DisplayName>DOB</DisplayName>
				<AttributeID>dateOfBirth</AttributeID>
				<Description>Date of Birth</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/dob</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/contact/postalCode/home</ClaimURI>
				<DisplayName>Postalcode</DisplayName>
				<AttributeID>postalCode</AttributeID>
				<Description>Postalcode</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/person/gender</ClaimURI>
				<DisplayName>Gender</DisplayName>
				<AttributeID>gender</AttributeID>
				<Description>Gender</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/gender</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>http://axschema.org/pref/language</ClaimURI>
				<DisplayName>Language</DisplayName>
				<AttributeID>prefferedLanguage</AttributeID>
				<Description>Language</Description>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
		</Dialect>
        <Dialect dialectURI="urn:scim:schemas:core:1.0">
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:id</ClaimURI>
				<DisplayName>Id</DisplayName>
				<AttributeID>scimId</AttributeID>
				<Description>Id</Description>
				<Required />
                <DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/userid</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:externalId</ClaimURI>
				<DisplayName>External Id</DisplayName>
				<AttributeID>externalId</AttributeID>
				<Description>External Id</Description>
				<Required />
                <DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/externalid</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:meta.created</ClaimURI>
				<DisplayName>Meta - Created</DisplayName>
				<AttributeID>createdDate</AttributeID>
				<Description>Meta - Created</Description>
				<Required />
                <DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/created</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:meta.lastModified</ClaimURI>
				<DisplayName>Meta - Last Modified</DisplayName>
				<AttributeID>lastModifiedDate</AttributeID>
				<Description>Meta - Last Modified</Description>
				<Required />
                <DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/modified</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:meta.location</ClaimURI>
				<DisplayName>Meta - Location</DisplayName>
				<AttributeID>location</AttributeID>
				<Description>Meta - Location</Description>
				<Required />
                <DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/location</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:userName</ClaimURI>
				<DisplayName>User Name</DisplayName>
				<AttributeID>uid</AttributeID>
				<Description>User Name</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/username</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:name.givenName</ClaimURI>
				<DisplayName>Name - Given Name</DisplayName>
				<AttributeID>givenName</AttributeID>
				<Description>Given Name</Description>
				<Required />
                <DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/givenname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:name.familyName</ClaimURI>
				<DisplayName>Name - Family Name</DisplayName>
				<AttributeID>sn</AttributeID>
				<Description>Family Name</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/lastname</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:name.formatted</ClaimURI>
				<DisplayName>Name - Formatted Name</DisplayName>
				<AttributeID>formattedName</AttributeID>
				<Description>Formatted Name</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/formattedName</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:name.middleName</ClaimURI>
				<DisplayName>Name - Middle Name</DisplayName>
				<AttributeID>middleName</AttributeID>
				<Description>Middle Name</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/middleName</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:name.honorificPrefix</ClaimURI>
				<DisplayName>Name - Honoric Prefix</DisplayName>
				<AttributeID>honoricPrefix</AttributeID>
				<Description>Honoric Prefix</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/honorificPrefix</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:name.honorificSuffix</ClaimURI>
				<DisplayName>Name - Honoric Suffix</DisplayName>
				<AttributeID>honoricSuffix</AttributeID>
				<Description>Honoric Suffix</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/honorificSuffix</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:displayName</ClaimURI>
				<DisplayName>Display Name</DisplayName>
				<AttributeID>displayName</AttributeID>
				<Description>Display Name</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/displayName</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:nickName</ClaimURI>
				<DisplayName>Nick Name</DisplayName>
				<AttributeID>nickName</AttributeID>
				<Description>Nick Name</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/nickname</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:profileUrl</ClaimURI>
				<DisplayName>Profile URL</DisplayName>
				<AttributeID>url</AttributeID>
				<Description>Profile URL</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/url</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:title</ClaimURI>
				<DisplayName>Title</DisplayName>
				<AttributeID>title</AttributeID>
				<Description>Title</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/title</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:userType</ClaimURI>
				<DisplayName>User Type</DisplayName>
				<AttributeID>userType</AttributeID>
				<Description>User Type</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/userType</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:preferredLanguage</ClaimURI>
				<DisplayName>Preferred Language</DisplayName>
				<AttributeID>preferredLanguage</AttributeID>
				<Description>Preferred Language</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/preferredLanguage</MappedLocalClaim>
			</Claim>
            <Claim>
                <ClaimURI>urn:scim:schemas:core:1.0:locale</ClaimURI>
                <DisplayName>Locality</DisplayName>
                <AttributeID>localityName</AttributeID>
                <Description>Locality</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/local</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:timeZone</ClaimURI>
				<DisplayName>Time Zone</DisplayName>
				<AttributeID>timeZone</AttributeID>
				<Description>Time Zone</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/timeZone</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:active</ClaimURI>
				<DisplayName>Active</DisplayName>
				<AttributeID>active</AttributeID>
				<Description>Active</Description>
				<DisplayOrder>2</DisplayOrder>
				<Required />
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/active</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:emails</ClaimURI>
				<DisplayName>Emails</DisplayName>
				<AttributeID>mail</AttributeID>
				<Description>Email Addresses</Description>
                <DisplayOrder>3</DisplayOrder>
				<Required />
				<SupportedByDefault />
                <RegEx>^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$</RegEx>
				<MappedLocalClaim>http://wso2.org/claims/emailaddress</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:emails.work</ClaimURI>
				<DisplayName>Emails - Work Email</DisplayName>
				<AttributeID>workEmail</AttributeID>
				<Description>Work Email</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/emails.work</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:emails.home</ClaimURI>
				<DisplayName>Emails - Home Email</DisplayName>
				<AttributeID>homeEmail</AttributeID>
				<Description>Home Email</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/emails.home</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:emails.other</ClaimURI>
				<DisplayName>Emails - Other Email</DisplayName>
				<AttributeID>otherEmail</AttributeID>
				<Description>Other Email</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/emails.other</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:phoneNumbers</ClaimURI>
				<DisplayName>Phone Numbers</DisplayName>
				<AttributeID>phoneNumbers</AttributeID>
				<Description>Phone Numbers</Description>
                <DisplayOrder>3</DisplayOrder>
				<Required />
				<SupportedByDefault />
                <RegEx>^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$</RegEx>
				<MappedLocalClaim>http://wso2.org/claims/phoneNumbers</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:phoneNumbers.mobile</ClaimURI>
				<DisplayName>Phone Numbers - Mobile Number</DisplayName>
				<AttributeID>mobile</AttributeID>
				<Description>Mobile Number</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/mobile</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:phoneNumbers.home</ClaimURI>
				<DisplayName>Phone Numbers - Home Phone Number</DisplayName>
				<AttributeID>homePhone</AttributeID>
				<Description>Home Phone</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/phoneNumbers.home</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:phoneNumbers.work</ClaimURI>
				<DisplayName>Phone Numbers - Work Phone Number</DisplayName>
				<AttributeID>workPhone</AttributeID>
				<Description>Work Phone</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/phoneNumbers.work</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:phoneNumbers.fax</ClaimURI>
				<DisplayName>Phone Numbers - Fax Number</DisplayName>
				<AttributeID>fax</AttributeID>
				<Description>Fax Number</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/phoneNumbers.fax</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:phoneNumbers.pager</ClaimURI>
				<DisplayName>Phone Numbers - Pager Number</DisplayName>
				<AttributeID>pager</AttributeID>
				<Description>Pager Number</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/phoneNumbers.pager</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:phoneNumbers.other</ClaimURI>
				<DisplayName>Phone Numbers - Other</DisplayName>
				<AttributeID>otherPhoneNumber</AttributeID>
				<Description>Other Phone Number</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/phoneNumbers.other</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:ims</ClaimURI>
				<DisplayName>IMS</DisplayName>
				<AttributeID>im</AttributeID>
				<Description>IM</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/im</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:ims.gtalk</ClaimURI>
				<DisplayName>IM - Gtalk</DisplayName>
				<AttributeID>imGtalk</AttributeID>
				<Description>IM - Gtalk</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/gtalk</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:ims.skype</ClaimURI>
				<DisplayName>IM - Skype</DisplayName>
				<AttributeID>imSkype</AttributeID>
				<Description>IM - Skype</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/skype</MappedLocalClaim>
			</Claim>
	    	<Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:photos</ClaimURI>
				<DisplayName>Photo</DisplayName>
				<AttributeID>photos</AttributeID>
				<Description>Photo</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/photos</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:photos.photo</ClaimURI>
				<DisplayName>Photo</DisplayName>
				<AttributeID>photoUrl</AttributeID>
				<Description>Photo</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/photourl</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:photos.thumbnail</ClaimURI>
				<DisplayName>Photo - Thumbnail</DisplayName>
				<AttributeID>thumbnail</AttributeID>
				<Description>Photo - Thumbnail</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/thumbnail</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:addresses</ClaimURI>
				<DisplayName>Address</DisplayName>
				<AttributeID>addresses</AttributeID>
				<Description>Address</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/addresses</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:addresses.formatted</ClaimURI>
				<DisplayName>Address - Formatted</DisplayName>
				<AttributeID>formattedAddress</AttributeID>
				<Description>Address - Formatted</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/addresses.formatted</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:addresses.streetAddress</ClaimURI>
				<DisplayName>Address - Street</DisplayName>
				<AttributeID>streetAddress</AttributeID>
				<Description>Address - Street</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/streetaddress</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:addresses.locality</ClaimURI>
				<DisplayName>Address - Locality</DisplayName>
				<AttributeID>localityAddress</AttributeID>
				<Description>Address - Locality</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/addresses.locality</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:addresses.region</ClaimURI>
				<DisplayName>Address - Region</DisplayName>
				<AttributeID>region</AttributeID>
				<Description>Address - Region</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/region</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:addresses.postalCode</ClaimURI>
				<DisplayName>Address - Postal Code</DisplayName>
				<AttributeID>postalCode</AttributeID>
				<Description>Address - Postal Code</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/postalcode</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:addresses.country</ClaimURI>
				<DisplayName>Address - Country</DisplayName>
				<AttributeID>country</AttributeID>
				<Description>Address - Country</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:groups</ClaimURI>
				<DisplayName>Groups</DisplayName>
				<AttributeID>groups</AttributeID>
				<Description>Groups</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/groups</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:entitlements</ClaimURI>
				<DisplayName>Entitlements</DisplayName>
				<AttributeID>entitlements</AttributeID>
				<Description>Entitlements</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/entitlements</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:roles</ClaimURI>
				<DisplayName>Roles</DisplayName>
				<AttributeID>roles</AttributeID>
				<Description>Roles</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/role</MappedLocalClaim>
			</Claim>
            <Claim>
				<ClaimURI>urn:scim:schemas:core:1.0:x509Certificates</ClaimURI>
				<DisplayName>X509Certificates</DisplayName>
				<AttributeID>x509Certificates</AttributeID>
				<Description>X509Certificates</Description>
                <DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/x509Certificates</MappedLocalClaim>
			</Claim>
		</Dialect>
		<Dialect dialectURI="http://wso2.org/oidc/claim">
			<Claim>
				<ClaimURI>sub</ClaimURI>
				<DisplayName>Subject</DisplayName>
				<AttributeID>uid</AttributeID>
				<Description>Identifier for the End-User at the Issuer</Description>
				<Required />
				<DisplayOrder>1</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/username</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>name</ClaimURI>
				<DisplayName>Full Name</DisplayName>
				<AttributeID>cn</AttributeID>
				<Description>End-User's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the End-User's locale and preferences</Description>
				<Required />
				<DisplayOrder>2</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/fullname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>given_name</ClaimURI>
				<DisplayName>Given Name</DisplayName>
				<AttributeID>cn</AttributeID>
				<Description>Given name(s) or first name(s) of the End-User. Note that in some cultures, people can have multiple given names; all can be present, with the names being separated by space characters.</Description>
				<DisplayOrder>3</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/fullname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>family_name</ClaimURI>
				<DisplayName>Surname</DisplayName>
				<AttributeID>sn</AttributeID>
				<Description>Surname(s) or last name(s) of the End-User. Note that in some cultures, people can have multiple family names or no family name; all can be present, with the names being separated by space characters.</Description>
				<DisplayOrder>4</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/lastname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>middle_name</ClaimURI>
				<DisplayName>Middle Name</DisplayName>
				<AttributeID>middleName</AttributeID>
				<Description>Middle name(s) of the End-User. Note that in some cultures, people can have multiple middle names; all can be present, with the names being separated by space characters. Also note that in some cultures, middle names are not used.</Description>
				<DisplayOrder>5</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>nickname</ClaimURI>
				<DisplayName>Nickname</DisplayName>
				<AttributeID>nickName</AttributeID>
				<Description>Casual name of the End-User that may or may not be the same as the given_name. For instance, a nickname value of Mike might be returned alongside a given_name value of Michael.</Description>
				<Required />
				<DisplayOrder>6</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/nickname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>preferred_username</ClaimURI>
				<DisplayName>Preferred Username</DisplayName>
				<AttributeID>cn</AttributeID>
				<Description>Shorthand name by which the End-User wishes to be referred to at the RP, such as janedoe or j.doe.</Description>
				<DisplayOrder>7</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/fullname</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>profile</ClaimURI>
				<DisplayName>Profile</DisplayName>
				<AttributeID>url</AttributeID>
				<Description>URL of the End-User's profile page. The contents of this Web page SHOULD be about the End-User.</Description>
				<DisplayOrder>8</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/url</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>picture</ClaimURI>
				<DisplayName>Picture</DisplayName>
				<AttributeID>image</AttributeID>
				<Description>URL of the End-User's profile picture. This URL MUST refer to an image file (for example, a PNG, JPEG, or GIF image file)</Description>
				<DisplayOrder>9</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>website</ClaimURI>
				<DisplayName>URL</DisplayName>
				<AttributeID>url</AttributeID>
				<Description>URL of the End-User's Web page or blog. This Web page SHOULD contain information published by the End-User or an organization that the End-User is affiliated with.</Description>
				<DisplayOrder>10</DisplayOrder>
				<SupportedByDefault />
				<MappedLocalClaim>http://wso2.org/claims/url</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>email</ClaimURI>
				<DisplayName>Email</DisplayName>
				<AttributeID>mail</AttributeID>
				<Description>End-User's preferred e-mail address.</Description>
				<MappedLocalClaim>http://wso2.org/claims/emailaddress</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>email_verified</ClaimURI>
				<DisplayName>Email Verified</DisplayName>
				<AttributeID>emailVerified</AttributeID>
				<Description>True if the End-User's e-mail address has been verified; otherwise false. </Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>gender</ClaimURI>
				<DisplayName>Gender</DisplayName>
				<AttributeID>gender</AttributeID>
				<Description>End-User's gender. Values defined by this specification are female and male. Other values MAY be used when neither of the defined values are applicable.</Description>
	            		<SupportedByDefault />
				<ReadOnly />
				<MappedLocalClaim>http://wso2.org/claims/gender</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>birthdate</ClaimURI>
				<DisplayName>Birth Date</DisplayName>
				<AttributeID>birthDate</AttributeID>
				<Description>End-User's birthday, represented as an ISO 8601:2004 [ISO8601-2004] YYYY-MM-DD format. The year MAY be 0000, indicating that it is omitted. To represent only the year, YYYY format is allowed.</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>zoneinfo</ClaimURI>
				<DisplayName>Zone Info</DisplayName>
				<AttributeID>zone</AttributeID>
				<Description>String from zoneinfo time zone database representing the End-User's time zone. For example, Europe/Paris or America/Los_Angeles.</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>locale</ClaimURI>
				<DisplayName>Locale</DisplayName>
				<AttributeID>locale</AttributeID>
				<Description>End-User's locale, For example, en-US or fr-CA, en_US</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>phone_number</ClaimURI>
				<DisplayName>Phone Number</DisplayName>
				<AttributeID>telephoneNumber</AttributeID>
				<Description>End-User's preferred telephone number. For example, +1 (425) 555-1212 or +56 (2) 687 2400., +1 (604) 555-1234;ext=5678.</Description>
				<MappedLocalClaim>http://wso2.org/claims/telephone</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>phone_number_verified</ClaimURI>
				<DisplayName>Phone Number Verified</DisplayName>
				<AttributeID>phoneVerififed</AttributeID>
				<Description>True if the End-User's phone number has been verified; otherwise false.</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>address</ClaimURI>
				<DisplayName>Address</DisplayName>
				<AttributeID>address</AttributeID>
				<Description>True if the End-User's phone number has been verified; otherwise false. </Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
			</Claim>
			<Claim>
				<ClaimURI>updated_at</ClaimURI>
				<DisplayName>Updated At</DisplayName>
				<AttributeID>updated</AttributeID>
				<Description>Time the End-User's information was last updated. Its value is a JSON number representing the number of seconds from 1970-01-01T0:0:0Z as measured in UTC until the date/time.</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
		    </Claim>
		    <Claim>
				<ClaimURI>formatted</ClaimURI>
				<DisplayName>Address Formatted</DisplayName>
				<AttributeID>formatted</AttributeID>
				<Description>Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines.</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
		    </Claim>
		    <Claim>
				<ClaimURI>street_address</ClaimURI>
				<DisplayName>Street Address</DisplayName>
				<AttributeID>street</AttributeID>
				<Description>Full street address component, which MAY include house number, street name, Post Office Box, and multi-line extended street address information.</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
		    </Claim>
		    <Claim>
				<ClaimURI>locality</ClaimURI>
				<DisplayName>Locality</DisplayName>
				<AttributeID>localityName</AttributeID>
				<Description>City or locality component.</Description>
				<MappedLocalClaim>http://wso2.org/claims/locality</MappedLocalClaim>
		    </Claim>
		    <Claim>
				<ClaimURI>region</ClaimURI>
				<DisplayName>One Time Password</DisplayName>
				<AttributeID>region</AttributeID>
				<Description>State, province, prefecture, or region component.</Description>
				<MappedLocalClaim>http://wso2.org/claims/region</MappedLocalClaim>
		    </Claim>
		    <Claim>
				<ClaimURI>postal_code</ClaimURI>
				<DisplayName>Postal Code</DisplayName>
				<AttributeID>postalcode</AttributeID>
				<Description>Zip code or postal code component.</Description>
				<MappedLocalClaim>http://wso2.org/claims/postalcode</MappedLocalClaim>
		    </Claim>
		    <Claim>
				<ClaimURI>country</ClaimURI>
				<DisplayName>Country</DisplayName>
				<AttributeID>country</AttributeID>
				<Description>Country name component</Description>
				<MappedLocalClaim>http://wso2.org/claims/country</MappedLocalClaim>
		    </Claim>
		</Dialect>
	</Dialects>
</ClaimConfig>
