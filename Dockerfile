FROM mcr.microsoft.com/dotnet/core/runtime:2.2
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/publish /app
#ENTRYPOINT ["/app/reconfiguration_script.sh"]
WORKDIR /app
ENTRYPOINT ["dotnet", "DotNetCoreHelloFromAppSettings.dll"]
