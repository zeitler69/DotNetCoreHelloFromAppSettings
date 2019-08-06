#!/bin/bash

if [ -n "$HelloValue" ]
then
{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > appsettings.json
fi

cd /app
dotnet DotNetCoreHelloFromAppSettings.dll
