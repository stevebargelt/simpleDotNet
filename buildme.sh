#!bin/bash
set -e
dotnet restore
#dotnet build src/simpleDotNet/project.json
dotnet test test/simpleDotNet.Tests/project.json
rm -rf $(pwd)/publish
dotnet publish src/simpleDotNet/project.json -c release -o $(pwd)/publish/

