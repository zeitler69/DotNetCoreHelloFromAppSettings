FROM mcr.microsoft.com/dotnet/core/runtime:2.2
#FROM microsoft/aspnetcore:2.0.0
#COPY src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/DotNetCoreHelloFromAppSettings.dll /app/DotNetCoreHelloFromAppSettings.dll
#COPY src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/appsettings.json /app/appsettings.json
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/publish /app
#ENTRYPOINT ["/app/reconfiguration_script.sh"]
#ENTRYPOINT ["dotnet", "/app/DotNetCoreHelloFromAppSettings.dll"]
