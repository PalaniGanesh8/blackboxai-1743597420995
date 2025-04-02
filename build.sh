#!/bin/bash

# Ensure the script is executable
chmod +x "$0"

# Create output directory if it doesn't exist
mkdir -p bin

# Build the project using dotnet build
dotnet build -c Release

if [ $? -eq 0 ]; then
    echo "Build completed successfully. Output: bin/Release/net48/SqlClrFunctions.dll"
else
    echo "Build failed!"
    exit 1
fi