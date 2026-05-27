param location string = 'Central India'

module storage './storage.bicep' = {
  name: 'storageDeploy'
  params: {
    storageAccountName: 'stor${uniqueString(resourceGroup().id)}'
    location: location
  }
}

module app './appservice.bicep' = {
  name: 'appDeploy'
  params: {
    appName: 'app${uniqueString(resourceGroup().id)}'
    location: location
  }
}
