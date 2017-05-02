@echo off
echo Compilando
dotnet build
dotnet publish
copy Dockerfile bin\Debug\netcoreapp1.1\publish
echo Construyendo imagen
docker build bin\Debug\netcoreapp1.1\publish -t appdotnet
echo Ejecutando contenedor - Puerto 8091 
docker run -it -d --name testcontainer appdotnet
