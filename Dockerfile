FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
#WORKDIR /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/DotNetCoreHelloFromAppSettings.dll /app
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/appsettings.json /app
#COPY DotNetCoreHelloFromAppSettings.dll /app
#ENTRYPOINT ["/app/reconfiguration_script.sh"]
#ENTRYPOINT ["dotnet", "/app/DotNetCoreHelloFromAppSettings.dll"]
