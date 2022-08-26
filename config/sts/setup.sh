#!/bin/sh



config='
{


  "Urls":  "http://localhost:9093/",
  "ConnectionStrings": {
    "ConfigurationDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';",
    "PersistedGrantDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';",
    "IdentityDbConnection": "Server='${SERVER_URL}';Port='${POSTGRES_DB_PORT}';Database=dctidentitydb;User ID='${POSTGRES_DB_USERNAME}';Password='${POSTGRES_DB_PASSWORD}';"
  },
    "DatabaseProviderConfiguration": {
        "ProviderType": "PostgreSQL"
    },
    "CertificateConfiguration": {

        "UseTemporarySigningKeyForDevelopment": true,

        "CertificateStoreLocation": "LocalMachine",
        "CertificateValidOnly": true,

        "UseSigningCertificateThumbprint": false,
        "SigningCertificateThumbprint": "",

        "UseSigningCertificatePfxFile": false,
        "SigningCertificatePfxFilePath": "",
        "SigningCertificatePfxFilePassword": "",

        "UseValidationCertificatePfxFile": false,
        "ValidationCertificatePfxFilePath": "",
        "ValidationCertificatePfxFilePassword": "",

        "UseValidationCertificateThumbprint": false,
        "ValidationCertificateThumbprint": ""
    },
    "RegisterConfiguration": {
        "Enabled": false
    },
    "ExternalProvidersConfiguration": {
        "UseGitHubProvider": false,
        "GitHubClientId": "",
        "GitHubClientSecret": ""
    },
    "SmtpConfiguration": {
        "Host": "",
        "Login": "",
        "Password": ""
    },
  "SendgridConfiguration": {
    "ApiKey": "'${SENDGRID_API_KEY}'",
    "SourceEmail": "paperplate@codentonic.com",
    "SourceName": "PaperPlate Admin"
  },
    "LoginConfiguration": {
        "ResolutionPolicy": "Username"
    },
  "AdminConfiguration": {
    "PageTitle": "Digiconnect Identity",

    "HomePageLogoUri": "/images/dct.png",
    "FaviconUri": "/favicon.ico",
    "IdentityAdminBaseUrl": "'${IdentityAdminRedirectUri}'/admin",
    "AdministrationRole": "Administrator"
  },
    "CultureConfiguration": {
        "Cultures": [],
        "DefaultCulture": null
    }
} 


'

echo ${PWD}
echo $config > ${PWD}/config/sts/appsettings.json