#!/bin/bash

if [ -n "$HelloValue" ]
then
{
  echo '{'
  echo "  \"HelloValue\": \"$HelloValue\""
  echo '}'
} > appsettings.json
fi

dotnet DotNetCoreHelloFromAppSettings.dll
