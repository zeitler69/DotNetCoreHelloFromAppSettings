FROM mcr.microsoft.com/dotnet/core/runtime:2.2
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/publish /app
ADD https://github.com/zeitler69/DotNetCoreHelloFromAppSettings/blob/master/reconfiguration_script.sh /app/
RUN ["chmod", "+x", "/app/reconfiguration_script.sh"]
#ENTRYPOINT ["sh" "/app/reconfiguration_script.sh"]
#ENTRYPOINT ["dotnet", "DotNetCoreHelloFromAppSettings.dll"]
