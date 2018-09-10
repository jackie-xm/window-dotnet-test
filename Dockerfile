FROM microsoft/dotnet:latest
WORKDIR /app
COPY bin/release/netcoreapp2.1/publish .
ENV ASPNETCORE_URLS http://0.0.0.0:80
ENTRYPOINT ["dotnet", "test.dll"]