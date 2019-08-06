#!/bin/bash
echo "$HelloValue"
cd /app
{
  echo '{'
  echo '  "HelloValue": "$HelloValue"'
  echo '}'
} > appsettings.json

cat appsettings.json
#dotnet DotNetCoreHelloFromAppSettings.dll
