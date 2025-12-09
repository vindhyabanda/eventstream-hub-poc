# Simulate device telemetry
param (
    [string]$IoTHubName,
    [string]$DeviceId,
    [string]$Message = "{ 'temperature': 25, 'humidity': 60 }"
)

az iot device send-d2c-message `
  --hub-name $IoTHubName `
  --device-id $DeviceId `
  --data $Message