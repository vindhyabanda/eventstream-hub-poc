# Test IoT Hub message routing
param (
    [string]$IoTHubName,
    [string]$DeviceId,
    [string]$MessageFile = "../samples/test-message.json"
)

az iot device send-d2c-message `
  --hub-name $IoTHubName `
  --device-id $DeviceId `
  --data @$MessageFile