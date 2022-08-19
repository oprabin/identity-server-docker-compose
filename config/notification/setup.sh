#!/bin/sh


SERVER_URL=192.168.102.253
POSTGRES_DB_USERNAME=postgres
POSTGRES_DB_PORT=5432
POSTGRES_DB_PASSWORD=root
IdentityAdminRedirectUri=https://videobanking-auth.machbank.com


config='{
"Urls":  "http://localhost:9094/",
  "ProjectConfiguration": {
    "ApiName": "NotificationServer.WebAPI",
    "ApiVersion": "v1.0",
    "IdentityServerBaseUrl": "'${IdentityAdminRedirectUri}'/sts",
    "OidcSwaggerUIClientId": "NotificationServerSwaggerClient",
    "OidcApiName": "NotificationServer.WebAPI",
    "CorsAllowAnyOrigin": true,
    "CorsAllowOrigins": [],
    "ApiBaseUrl": "'${IdentityAdminRedirectUri}'/notification",
    "ClientUrl": "'${IdentityAdminRedirectUri}'/notification"
  },
  "ConnectionStrings": {
    "DefaultConnection": "Server='${SERVER_URL}';Database=notificationserverdb;Port='${POSTGRES_DB_PORT}';User Id='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';",
    "HangFireConnection": "Server='${SERVER_URL}';Database=notificationserverjobsdb;Port='${POSTGRES_DB_PORT}';User Id='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft": "Warning",
      "Microsoft.Hosting.Lifetime": "Information"
    }
  },
  "AllowedHosts": "*"
}

'

echo $config > ${PWD}/config/notification/appsettings.json