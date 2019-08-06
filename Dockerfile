#FROM mcr.microsoft.com/dotnet/core/runtime:2.2
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
#FROM microsoft/aspnetcore:2.0.0
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/publish /app
#ENTRYPOINT ["/app/reconfiguration_script.sh"]
ENTRYPOINT ["dotnet", "/app/DotNetCoreHelloFromAppSettings.dll"]
