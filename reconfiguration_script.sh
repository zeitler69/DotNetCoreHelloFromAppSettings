#!/bin/bash
echo $HelloValue
{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > /app/appsettings.json

cat /app/appsettings.json
#dotnet DotNetCoreHelloFromAppSettings.dll
