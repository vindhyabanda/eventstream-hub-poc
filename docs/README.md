# Eventstream Hub PoC

## Goal
Route IoT Hub messages directly into Microsoft Fabric Eventstream using ARM templates—bypassing Azure Portal limitations—to validate identity-based ingestion and establish a seamless Hub → Eventstream → Fabric pipeline.

## Repository Layout
- **/arm/**: Contains ARM templates for deploying IoT Hub, UAMI, custom endpoint, and routing rules.
- **/scripts/**: PowerShell scripts for validating, deploying, and testing the setup.
- **/schemas/**: JSON schemas for IoT Hub message types.
- **/docs/**: Documentation for architecture, UAMI auth flow, Eventstream requirements, and troubleshooting.
- **/samples/**: Sample scripts for testing IoT Hub message routing.
- **/.vscode/**: Recommended extensions and settings for development.

## Quick Start
1. Update `parameters.json` with:
   - IoT Hub name
   - UAMI name
   - Eventstream ingestion URL and connection path
   - Endpoint name
2. Run `validate.ps1` to validate the templates.
3. Run `deploy.ps1` to deploy the resources.
4. Run `test-routing.ps1` to verify message routing.