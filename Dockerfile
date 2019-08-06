FROM mcr.microsoft.com/dotnet/core/runtime:2.2
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/publish /app
ADD https://github.com/zeitler69/DotNetCoreHelloFromAppSettings/blob/master/reconfiguration_script.sh /app/
ENTRYPOINT ["/app/reconfiguration_script.sh"]
#ENTRYPOINT ["dotnet", "DotNetCoreHelloFromAppSettings.dll"]
