#!/bin/bash
echo "$HelloValue"
{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > /app/appsettings.json

cat appsettings.json
#dotnet DotNetCoreHelloFromAppSettings.dll
