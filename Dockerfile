FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
COPY /bin/Release/DotNetCoreHelloFromAppSettings.dll /app
#ENTRYPOINT ["/app/reconfiguration_script.sh"]
ENTRYPOINT ["dotnet", "/app/DotNetCoreHelloFromAppSettings.dll"]