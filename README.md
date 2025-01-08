# 200lab - Test Automation For Social Web

**200lab - Social Bento** is a web application designed for me to test automation using the **Robot Framework** and **SeleniumLibrary**. This framework supports testing social web features such as login, posting, reacting, commenting, and more.

## Features

- **Multi-browser support**: Compatible with Chrome, Firefox, Edge, and Safari.
- **Multi-environment support**: Works both locally and remotely.
- **Multiple test data formats**: Supports CSV, Excel, and JSON formats.
- **Multiple test report formats**: Generates HTML, XML, and PDF reports.
- Focuses on testing core functionalities of social web applications: **login**, **CRUD Post**, **Notifications**, **Messages**, **Bookmarks**, **Profile**, etc.

## Setup

### Prerequisites

1. **Clone the repository**:
    ```sh
    git clone https://github.com/phat4980/200lab-social-automation.git
    ```
   
2. **Install Python 4.0 or later**. Ensure that Python is added to your system’s PATH.

3. **Create a virtual environment**:
    ```sh
    pip install pip install virtualenv
    python -m virtualenv .env
    ```

4. **Activate the virtual environment**:
    - **On Windows**:
        ```sh
        .env\Scripts\activate
        ```
    - **On macOS and Linux**:
        ```sh
        source .env/bin/activate
        ```

5. **Install the required packages** from the `requirements.txt` file:
    ```sh
    pip install -r requirements.txt
    ```

## Usage

### Running Tests



1. **Run the  spetific test suite**:
    Navigate to the test folder and run a test suite:
    ```sh
    robot Test/<name_of_test_suite>.robot
    ```
2. **Run all the test suites**:
    Run all test suites by this command line:
    ```sh
    robot Test/
    ```



## Additional Information

For detailed documentation on how to use **Robot Framework** or **SeleniumLibrary**, refer to their official documentation:
- [Robot Framework Documentation](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#user-keyword-tags)
- [SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/)
