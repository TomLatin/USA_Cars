<h1 style="color:#007BFF;">USA Cars</h1>

<h2 style="color:#ADD8E6;">Overview</h2>
This project provides a set of dbt models and tests to analyze and validate data related to cars, including aggregated statistics, high-value cars, and comprehensive car datasets.

---

<h2 style="color:#ADD8E6;">Getting Started</h2>

### Prerequisites
Make sure you have the following installed on your machine:
- Python 3.9 or higher

### Installation
1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
    ```
2. Create and Activate the Virtual Environment:
    ```bash
    python -m venv venv
    .\venv\Scripts\activate
    ```
3. Install required Python packages:
   ```bash
   pip install -r requirements.txt
   ```
4. Install dbt dependencies:
   ```bash
   dbt deps
   ```
### Project Structure:
* models/: Contains dbt models and configurations.
* tests/: Custom tests and expectations defined for dbt models.
* seeds/: Static data files that can be loaded into the database (e.g., CSV files).
* requirements.txt: Python dependencies for the project.

<h2 style="color:#ADD8E6;">How to Use</h2>

### 1. Run dbt Commands
To build all models:
```bash
dbt run
```
Test Models
Run tests to validate the data:
```bash
dbt test
```
### 2. Generate Documentation
Generate documentation for the project:
```bash
dbt docs generate
```
