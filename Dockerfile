FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
#COPY src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/DotNetCoreHelloFromAppSettings.dll /app/DotNetCoreHelloFromAppSettings.dll
#COPY src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/appsettings.json /app/appsettings.json
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0 /app
#ENTRYPOINT ["/app/reconfiguration_script.sh"]
#ENTRYPOINT ["dotnet", "/app/DotNetCoreHelloFromAppSettings.dll"]
