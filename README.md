# Quantum | Eggs
_The Quantum Egg for Pterodactyl is a preconfigured resource that makes it easy to deploy and manage QuantumMC servers through the Pterodactyl control panel. This egg provides an optimized default configuration and an intuitive user interface to facilitate the customization and management of QuantumMC servers._

## Instructions for Deploy
If you are reading this it looks like you are looking to add an egg to your server.

> [!NOTE]
> This egg requires the **.NET 9** Docker image (`ghcr.io/ptero-eggs/yolks:dotnet_9`). Make sure your node has access to this image before importing.

> [!CAUTION]
> Do **not** use .NET 9 or .NET 10 images — QuantumMC 0.0.1-alpha1 targets .NET 9 specifically. Using an incorrect runtime may cause the server to fail to start.

1. Download the JSON file named `egg-quantummc.json` located in this repository.
2. In your panel, go to the **Nests** section in the admin area.
3. Click the green **Import Egg** button.
4. Browse to the JSON file you saved earlier.
5. Select which nest you want to place the egg in.
   > If you want a new nest you need to create it before importing the egg.

## Contributors
@ItzMalikDEV
