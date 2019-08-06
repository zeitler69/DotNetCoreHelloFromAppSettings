#!/bin/bash
echo $HelloValue

{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > appsettings.json

cat appsettings.json
dotnet DotNetCoreHelloFromAppSettings.dll
