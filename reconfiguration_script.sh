#!/bin/bash
cd /app
if [ -n "$HelloValue" ]
then
{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > appsettings.json
fi
echo "script works great"
echo pwd
dotnet DotNetCoreHelloFromAppSettings.dll
