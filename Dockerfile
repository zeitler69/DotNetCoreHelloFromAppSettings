FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
#WORKDIR /bin/Release
COPY src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/DotNetCoreHelloFromAppSettings.dll /app
#COPY DotNetCoreHelloFromAppSettings.dll /app
#ENTRYPOINT ["/app/reconfiguration_script.sh"]
ENTRYPOINT ["dotnet", "/app/DotNetCoreHelloFromAppSettings.dll"]
