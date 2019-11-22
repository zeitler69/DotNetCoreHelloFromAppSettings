FROM mcr.microsoft.com/dotnet/core/runtime:2.2
COPY src/DotNetCoreHelloFromAppSettings/bin/Debug /app
COPY reconfiguration_script.sh /app/
RUN ["chmod", "+x", "/app/reconfiguration_script.sh"]
ENTRYPOINT ["/app/reconfiguration_script.sh"]
