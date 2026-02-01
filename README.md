# Automated CRUD API tests with Robot Framework, integrated with CI/CD workflows for continuous validation

This project contains API tests for a sample CRUD (Create, Read, Update, Delete) workflow using **Robot Framework** and **RequestsLibrary**. It also includes a **CI workflow** using GitHub Actions.

## Project Structure

robot-api-cicd-project1/
```
├── tests/               # Robot test cases
├── resources/           # Custom keywords
├── data/                # Test data (JSON)
├── .github/
│   └── workflows/       # GitHub Actions workflow
└── README.md            # This file
```


## Requirements

- Python 3.10+
- Robot Framework
- RequestsLibrary

## Installation

1. Clone the repository:

```bash
Install dependencies:

pip install -r requirements.txt
Running Tests Locally
robot --outputdir results tests/
Test reports (HTML, XML, log) will be saved in the results/ folder.

Open results/report.html in a browser to see a full test report.


CRUD Testing

The tests cover the following API operations:

Create: Add new posts via POST requests

Read: Retrieve posts via GET requests

Update: Modify existing posts via PUT/PATCH requests

Delete: Remove posts via DELETE requests

Post IDs in the tests are currently hardcoded (e.g., 1) for simplicity.


CI/CD
The project uses GitHub Actions to automatically run tests on every push or pull request to the main branch.

Workflow file is located at .github/workflows/robot-ci.yml.

Test reports are saved as workflow artifacts after each run.


Workflow steps:

Checkout code from GitHub.

Set up Python 3.10 on a GitHub-hosted Ubuntu VM.

Install required dependencies (Robot Framework and RequestsLibrary).

Run all Robot tests in the tests/ folder.

Upload HTML/XML test reports as artifacts.


Notes
The API used is JSONPlaceholder, which is a public API for testing.

Post IDs in the tests are currently hardcoded (e.g., 1) for simplicity.

Comments are included in the test files and workflow for clarity and maintainability.
