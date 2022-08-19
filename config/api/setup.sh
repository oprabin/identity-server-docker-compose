#!/bin/sh


SERVER_URL=192.168.102.253
POSTGRES_DB_USERNAME=postgres
POSTGRES_DB_PORT=5432
POSTGRES_DB_PASSWORD=root
IdentityAdminRedirectUri=https://videobanking-auth.machbank.com


config='{
{

  "Urls":  "http://localhost:9092/",
  "PATHBASE": "",
  "ConnectionStrings": {
    "ConfigurationDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';",
    "PersistedGrantDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';",
    "IdentityDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';",
    "AdminLogDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';",
    "AdminAuditLogDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';"
  },
  "DatabaseProviderConfiguration": {
    "ProviderType": "PostgreSQL"
  },
  "AdminConfiguration": {
    "PageTitle": "DCT Admin",
    "FaviconUri": "/favicon.ico",
    "IdentityAdminRedirectUri": "'${IdentityAdminRedirectUri}'/signin-oidc",
    "IdentityServerBaseUrl": "'${IdentityAdminRedirectUri}'/sts",
    "IdentityAdminCookieName": "IdentityServerAdmin",
    "IdentityAdminCookieExpiresUtcHours": 12,
    "RequireHttpsMetadata": false,
    "TokenValidationClaimName": "name",
    "TokenValidationClaimRole": "role",
    "ClientId": "DctIdentityAdminClientId",
    "ClientSecret": "DctIdentityAdminClientSecret",
    "OidcResponseType": "code id_token",
    "Scopes": [
      "openid",
      "profile",
      "email",
      "roles"
    ],
    "AdministrationRole": "Administrator"
    },
  "AuditLoggingConfiguration": {
    "Source": "IdentityServer.Admin.Web",
    "SubjectIdentifierClaim": "sub",
    "SubjectNameClaim": "name",
    "IncludeFormVariables": false
  },
  "CultureConfiguration": {
    "Cultures": [],
    "DefaultCulture": null
  }
}

'

echo $config > appsettings.json