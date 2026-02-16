FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /app
COPY *.csproj ./
RUN dotnet restore
COPY . .
RUN dotnet build -c Release -o /app
EXPOSE 80
ENTRYPOINT ["dotnet", "run"]