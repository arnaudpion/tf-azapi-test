terraform {
  required_providers {
    azapi = {
      source = "azure/azapi"
    }
  }
}

provider "azapi" {
}

resource "azapi_resource" "symbolicname" {
  type = "Microsoft.Storage/storageAccounts@2023-01-01"
  name = "testingiacgithubscanner2"
  location = "string"
  parent_id = "/"
  tags = {
    tagName1 = "tagValue1"
    tagName2 = "tagValue2"
  }
  identity {
    type = "UserAssigned"
    identity_ids = []
  }
  body = jsonencode({
    properties = {
      accessTier = "string"
      allowBlobPublicAccess = true
      allowCrossTenantReplication = true
      allowedCopyScope = "string"
      allowSharedKeyAccess = true
      azureFilesIdentityBasedAuthentication = {
        activeDirectoryProperties = {
          accountType = "string"
          azureStorageSid = "string"
          domainGuid = "string"
          domainName = "string"
          domainSid = "string"
          forestName = "string"
          netBiosDomainName = "string"
          samAccountName = "string"
        }
        defaultSharePermission = "string"
        directoryServiceOptions = "string"
      }
      customDomain = {
        name = "string"
        useSubDomainName = true
      }
      defaultToOAuthAuthentication = true
      dnsEndpointType = "string"
      encryption = {
        identity = {
          federatedIdentityClientId = "string"
          userAssignedIdentity = "string"
        }
        keySource = "string"
        keyvaultproperties = {
          keyname = "string"
          keyvaulturi = "string"
          keyversion = "string"
        }
        requireInfrastructureEncryption = true
        services = {
          blob = {
            enabled = true
            keyType = "string"
          }
          file = {
            enabled = true
            keyType = "string"
          }
          queue = {
            enabled = true
            keyType = "string"
          }
          table = {
            enabled = true
            keyType = "string"
          }
        }
      }
      immutableStorageWithVersioning = {
        enabled = true
        immutabilityPolicy = {
          allowProtectedAppendWrites = true
          immutabilityPeriodSinceCreationInDays = 7
          state = "string"
        }
      }
      isHnsEnabled = true
      isLocalUserEnabled = true
      isNfsV3Enabled = true
      isSftpEnabled = true
      keyPolicy = {
        keyExpirationPeriodInDays = 7
      }
      largeFileSharesState = "string"
      minimumTlsVersion = "string"
      networkAcls = {
        bypass = "string"
        defaultAction = "string"
        ipRules = [
          {
            action = "Allow"
            value = "string"
          }
        ]
        resourceAccessRules = [
          {
            resourceId = "string"
            tenantId = "string"
          }
        ]
        virtualNetworkRules = [
          {
            action = "Allow"
            id = "string"
            state = "string"
          }
        ]
      }
      publicNetworkAccess = "string"
      routingPreference = {
        publishInternetEndpoints = true
        publishMicrosoftEndpoints = true
        routingChoice = "string"
      }
      sasPolicy = {
        expirationAction = "Log"
        sasExpirationPeriod = "string"
      }
      # supportsHttpsTrafficOnly = true
      supportsHttpsTrafficOnly = false
    }
    sku = {
      name = "string"
    }
    kind = "string"
    extendedLocation = {
      name = "string"
      type = "EdgeZone"
    }
  })
}