#!/bin/bash

cd /mnt/server || exit

# Default version if not set
QUANTUMMC_VERSION="${QUANTUMMC_VERSION:-0.0.1-alpha2}"

# Check if server file exists
if [ ! -f "QuantumMC.dll" ]; then
    echo "QuantumMC not found. Downloading version ${QUANTUMMC_VERSION}..."

    apt-get update > /dev/null 2>&1
    apt-get install -y wget curl > /dev/null 2>&1

    wget -q -O QuantumMC.dll "https://github.com/BedrockSharp/QuantumMC/releases/download/${QUANTUMMC_VERSION}/QuantumMC.dll"

    if [ ! -f "QuantumMC.dll" ]; then
        echo "Download failed! Check version or URL."
        exit 1
    fi

    echo "Download complete."
fi

echo "Starting QuantumMC..."
dotnet QuantumMC.dll
