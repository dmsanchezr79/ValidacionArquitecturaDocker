FROM microsoft/aspnetcore:latest
ENTRYPOINT ["dotnet", "src.dll"]
ARG source=.
WORKDIR /src
EXPOSE 8091
COPY $source .
