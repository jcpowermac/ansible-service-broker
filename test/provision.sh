#!/bin/bash -e

#instanceUUID="688eea24-9cf9-43e3-9942-d1863b2a16af"
#planUUID="560789e6-d4fc-4bdf-b227-454002d5e7c6"
#serviceUUID="f819ddd5-37d1-4698-b3fb-a3cc99a35d2e" # ghost-ansibleapp
instanceUUID="688eea24-9cf9-43e3-9942-d1863b2a16af"
planUUID="4c10ff42-be89-420a-9bab-27a9bef9aed8"
serviceUUID="f32de3bc-3225-429a-b23b-cef47ca1d25b" # etherpad app

req="{
  \"plan_id\": \"$planUUID\",
  \"service_id\": \"$serviceUUID\",
  \"parameters\": {
    \"MYSQL_USER\": \"username\"
  }
}"

curl \
  -X PUT \
  -H 'X-Broker-API-Version: 2.9' \
  -H 'Content-Type: application/json' \
  -d "$req" \
  -v \
  http://cap.example.com:1338/v2/service_instances/$instanceUUID
