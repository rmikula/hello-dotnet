FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app


FROM microsoft/dotnet:sdk AS build
WORKDIR /src

COPY . .

# RUN dotnet build "hello-dotnet.csproj" -c Release -o /app
RUN dotnet restore "./hello-dotnet.csproj"

#build applicaton from sources
RUN dotnet build "hello-dotnet.csproj" -c Release -o /app

FROM build as publish
RUN dotnet publish "hello-dotnet.csproj" -c Release -o /app

FROM base as final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT [ "dotnet", "hello-dotnet.dll"]
