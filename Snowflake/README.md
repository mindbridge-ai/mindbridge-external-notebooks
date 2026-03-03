# Snowflake to MindBridge Integration Guide

This guide walks you through the process of integrating your Snowflake environment with MindBridge using the provided Python SDK, SQL scripts, and API credentials.

---

## 📋 Prerequisites

Ensure you have the following before starting:

- A Snowflake account with appropriate privileges.
- A MindBridge account with access to generate an API key.
- GitHub access to download the required SDK and files.

---

## ✅ Step 1: Download the Python SDK

1. Navigate to the MindBridge GitHub repository (link provided by your MindBridge contact).
2. Locate the Python SDK `.zip` file.
3. Download it to your local machine.

---

## ✅ Step 2: Download the Notebook and SQL File

1. In the same GitHub repository:
   - Download the Jupyter Notebook (`.ipynb`).
   - Download the SQL file (`.sql`) that sets up Snowflake integration.
2. Save both files locally.

---

## ✅ Step 3: Create a MindBridge API Key

1. Log into your MindBridge account.
2. Navigate to `Settings` → `API Keys`.
3. Click **Create API Key**.
4. Download the `.json` file securely. It contains your authentication credentials.

---

## ✅ Step 4: Upload Files to Snowflake Stage

1. Log into Snowflake (via Web UI or SnowSQL CLI).
2. If not already created, create a stage:
   ```sql
   CREATE OR REPLACE STAGE mindbridge_stage;



## ✅ Step 5: Load and Execute the SQL File in Snowflake

1. Open **Snowflake Web UI**.
2. Go to the **Worksheets** tab.
3. Do one of the following:
   - Upload the `.sql` file as a worksheet, or
   - Copy and paste the SQL code into a new worksheet manually.
4. **Update the SQL script** to match your environment:
   - Replace placeholders with actual values:
     ```sql
     USE DATABASE your_database;
     USE SCHEMA your_schema;
     -- Update any hardcoded file names or parameters
     ```

---

## ✅ Step 6: Enable External Stage Access and Run Notebook

1. Open the **Jupyter Notebook** you downloaded.
2. Locate the section related to Snowflake external stage configuration.
3. Ensure the external stage setting is enabled:
   ```python
   %config ExternalStage.enable = True
   ```
4. Run each cell in the notebook to:
   - Load the SDK
   - Authenticate with the MindBridge API
   - Trigger the integration process

---


## ▶️ Final Step: Run the Notebook Sequentially

After completing the previous setup:

1. Open the **Jupyter Notebook** downloaded from the GitHub repository.
2. Run **each cell sequentially** from top to bottom.
3. During the notebook execution:
   - A **CSV file** will be generated as output from your Snowflake queries or transformations.
   - This CSV will first be saved in the **Snowflake stage**.
   - Then, it will be moved or copied to a **temporary folder** (e.g., a staging or processing location) for further use.

> ✅ **Important:** Ensure the intermediate CSV is successfully written to the stage and then correctly transferred to the temporary folder. This is critical for the integration pipeline to function properly.



## 🛠️ Troubleshooting

| Issue                | Solution |
|---------------------|----------|
| ❌ File upload fails | Check file paths and stage existence |
| ❌ API errors        | Verify `.json` credentials file and endpoint |
| ❌ SQL issues        | Ensure proper database/schema names are set |
