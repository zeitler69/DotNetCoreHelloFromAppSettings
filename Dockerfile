FROM mcr.microsoft.com/dotnet/core/runtime:2.2
COPY /src/DotNetCoreHelloFromAppSettings/bin/Release/netcoreapp2.0/publish /app
ADD https://raw.githubusercontent.com/zeitler69/DotNetCoreHelloFromAppSettings/master/reconfiguration_script.sh /app/
RUN ["chmod", "+x", "/app/reconfiguration_script.sh"]
ENTRYPOINT ["/app/reconfiguration_script.sh"]
