#!/bin/sh


SERVER_URL=192.168.102.253
POSTGRES_DB_USERNAME=postgres
POSTGRES_DB_PORT=5432
POSTGRES_DB_PASSWORD=root
IdentityAdminRedirectUri=https://videobanking-auth.machbank.com


# config='{
#   "Urls":  "http://localServer:9092/",
#   "PATHBASE": "",
#   "ConnectionStrings": {
#     "ConfigurationDbConnection": "Server=''${SERVER_URL}'';Port=''${POSTGRES_DB_PORT}'';Database=dctidentitydb;User ID=''${POSTGRES_DB_PORT}'';Password=''${POSTGRES_DB_PASSWORD}'';",
#     "PersistedGrantDbConnection": "Server=''${SERVER_URL}'';Port=''${POSTGRES_DB_PORT}'';Database=dctidentitydb;User ID=''${POSTGRES_DB_PORT}'';Password=''${POSTGRES_DB_PASSWORD}'';",
#     "IdentityDbConnection": "Server=''${SERVER_URL}'';Port=''${POSTGRES_DB_PORT}'';Database=dctidentitydb;User ID=''${POSTGRES_DB_PORT}'';Password=''${POSTGRES_DB_PASSWORD}'';",
#     "AdminLogDbConnection": "Server=''${SERVER_URL}'';Port=''${POSTGRES_DB_PORT}'';Database=dctidentitydb;User ID=''${POSTGRES_DB_PORT}'';Password=''${POSTGRES_DB_PASSWORD}'';",
#     "AdminAuditLogDbConnection": "Server=''${SERVER_URL}'';Port=''${POSTGRES_DB_PORT}'';Database=dctidentitydb;User ID=''${POSTGRES_DB_PORT}'';Password=''${POSTGRES_DB_PASSWORD}'';"
#   },
#   "DatabaseProviderConfiguration": {
#     "ProviderType": "PostgreSQL"
#   },
#   "AdminConfiguration": {
#     "PageTitle": "DCT Admin",
#     "FaviconUri": "/favicon.ico",
#     "IdentityAdminRedirectUri": "'${IdentityAdminRedirectUri}'/signin-oidc",
#     "IdentityServerBaseUrl": "'${IdentityAdminRedirectUri}'/sts",
#     "IdentityAdminCookieName": "IdentityServerAdmin",
#     "IdentityAdminCookieExpiresUtcHours": 12,
#     "RequireHttpsMetadata": false,
#     "TokenValidationClaimName": "name",
#     "TokenValidationClaimRole": "role",
#     "ClientId": "DctIdentityAdminClientId",
#     "ClientSecret": "DctIdentityAdminClientSecret",
#     "OidcResponseType": "code id_token",
#     "Scopes": [
#       "openid",
#       "profile",
#       "email",
#       "roles"
#     ],
#     "AdministrationRole": "Administrator"
#     },
#   "AuditLoggingConfiguration": {
#     "Source": "IdentityServer.Admin.Web",
#     "SubjectIdentifierClaim": "sub",
#     "SubjectNameClaim": "name",
#     "IncludeFormVariables": false
#   },
#   "CultureConfiguration": {
#     "Cultures": [],
#     "DefaultCulture": null
#   }
# }

# '


config='{
"Urls":  "http://localServer:9092/",
  "ConnectionStrings": {
    "ConfigurationDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Initial Catalog=dctidentitydb;User ID=='${POSTGRES_DB_PORT}';Password='${POSTGRES_DB_PASSWORD}';",
    "PersistedGrantDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Initial Catalog=dctidentitydb;User ID=='${POSTGRES_DB_PORT}';Password='${POSTGRES_DB_PASSWORD}';",
    "IdentityDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Initial Catalog=dctidentitydb;User ID=='${POSTGRES_DB_PORT}';Password='${POSTGRES_DB_PASSWORD}';",
    "AdminLogDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Initial Catalog=dctidentitydb;User ID=='${POSTGRES_DB_PORT}';Password='${POSTGRES_DB_PASSWORD}';",
    "AdminAuditLogDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Initial Catalog=dctidentitydb;User ID=='${POSTGRES_DB_PORT}';Password='${POSTGRES_DB_PASSWORD}';"
  },
  "AdminApiConfiguration": {
    "ApiName": "DCT Identity",
    "ApiVersion": "v1",
    "ApiBaseUrl": "'${IdentityAdminRedirectUri}'/admin-api/",
    "IdentityServerBaseUrl": "'${IdentityAdminRedirectUri}'",
    "OidcSwaggerUIClientId": "DctIdentityAdminClientId_api_swaggerui",
    "OidcApiName": "DctIdentityAdminClientId_api",
    "AdministrationRole": "Administrator",
    "RequireHttpsMetadata": false,
    "CorsAllowAnyOrigin": true,
    "CorsAllowOrigins": []
  },
    "DatabaseProviderConfiguration": {
        "ProviderType": "PostgreSQL"
    },
    "AuditLoggingConfiguration": {
        "Source": "IdentityServer.Admin.Api",
        "SubjectIdentifierClaim": "sub",
        "SubjectNameClaim": "name",
        "ClientIdClaim": "client_id"
    }
}
'



echo $config > ${PWD}/config/api/appsettings.json