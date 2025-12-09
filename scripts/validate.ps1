# Validate the ARM templates
param (
    [string]$ResourceGroupName,
    [string]$TemplateFile = "../arm/main.json",
    [string]$ParametersFile = "../arm/parameters.json"
)

az deployment group validate `
  --resource-group $ResourceGroupName `
  --template-file $TemplateFile `
  --parameters @$ParametersFile