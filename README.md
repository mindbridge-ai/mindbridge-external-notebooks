# mindbridge-external-notebooks
# MindBridge Cloud Data Platform Integration Notebooks
Pre-configured notebooks and integration resources for connecting your MindBridge tenant to your cloud data platform. This repository enables data engineers and developers to securely extract, prepare, and transfer data from their cloud environments into MindBridge for analysis.
## Overview
MindBridge integrates with modern cloud data platforms to support scalable, secure, and automated data ingestion workflows. This repository provides pre-configured notebooks, platform-specific integration guidance, authentication and configuration examples, data preparation best practices, and reusable patterns for automation. Currently supported platforms: Databricks, Snowflake, Microsoft Fabric (follows the Databricks workflow).
## Repository Structure
Each supported platform has its own directory.
```
/
├── databricks/
├── snowflake/
└── shared/
```
### Platform Directories
Each platform folder contains a README.md with platform-specific setup instructions, pre-configured notebooks, authentication guidance, configuration examples, and sample queries and extraction templates. The shared/ directory contains reusable components and utilities that apply across platforms where applicable.
## Platform Guidance
### Databricks
The databricks/ directory contains notebooks and setup instructions specific to connecting to your Databricks workspace.
### Snowflake
The databricks/ directory contains notebooks and setup instructions specific to connecting to your Snowflake workspace.
### Microsoft Fabric
Microsoft Fabric follows the same integration workflow as Databricks. If you are using Microsoft Fabric, navigate to the databricks/ directory, follow the Databricks setup instructions, and apply them within your Fabric environment (Lakehouse or Notebook experience).
## Support
For assistance, please refer consult the [MindBridge Developer Portal](https://developer.mindbridge.ai) or contact your dedicated MindBridge representative.
