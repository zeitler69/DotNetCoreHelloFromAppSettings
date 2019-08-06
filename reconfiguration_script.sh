#!/bin/bash
echo $HelloValue
echo $PWD
cd /app
echo $PWD
if [ -n "$HelloValue" ]
then
{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > appsettings.json
fi
echo $PWD
dotnet DotNetCoreHelloFromAppSettings.dll
