#!/bin/bash
echo $HelloValue
{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > /app/appsettings.json
cd /app
cat appsettings.json
#dotnet DotNetCoreHelloFromAppSettings.dll
