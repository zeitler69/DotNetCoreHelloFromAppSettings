# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
WORKDIR /app/binaries
COPY --from=build-env /app/out .
ENTRYPOINT ["/app/reconfiguration_script.sh"] 
