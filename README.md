# Robot Framework GUI + API Testing

This project is a hybrid project (GUI+API) using Robot Framework coding best practices, simulating a real project. I've learned valuable best practices from: [HowToWriteGoodTestCases](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst)

In my real projects, I always try to follow 3 cornerstones:

- reusability
- maintainability
- scalability

In this project, all folders, files, keywords, variables, and test cases have some meaning.
When you are working in large teams duplicate work could be a problem, that way creating a clear project structure with folders/files and reusable keywords, pushing all new development in a git environment, recommending people to do code review this issue will be minimized. In this demo project, I'm not using suite files, I'm creating one file for TC, this is useful because when you have a large number of commits or changes different files can help to avoid merge conflict.

To keep maintainability, your keywords, variables, and test cases should be clear and user-oriented (BDD and ATDD technics). All low-level implementation should be abstracted in other keywords or in some cases should be moved to python scripts and imported as a library in Robot.

If you follow the 2 first cornerstones you will be able to scale your project and scale this to a CI/CD approach using Jenkins or Gitlab to do continuous testing helping the development team to always get the latest software status and the most important, trusting in the results.

### Prerequisites

1. Install the latest [python3](https://www.python.org/downloads/windows/) version:
2. Add Python to PATH
3. Intall Python requiriments:
```
pip install -r requirements.txt
```
4. Download [chrome driver](https://chromedriver.chromium.org/downloads) and put it in: 
```
/python3x/scripts
```
5. (Optional) Install [Pycharm](https://www.jetbrains.com/pt-br/pycharm/download/#section=windows) IDE

### Project Structure
```
PageObjects/    # GUI locators files
Resources/      # A common style in Robot Framework to place high level and reusable keyword implementations
| API/          # API Keywords
| GUI/          # GUI Keywrods
|
TestCases/      # Test Cases files
| API/          # API Test Cases organized in folder for each REST method
| GUI/          # GUI Test Cases organized in folder for each user action
|
TestData/       # Source data for Test Cases files
| API/          # Input data for API Test Cases
| GUI/          # Input data for GUI Test Cases
|
TestLog/        # Test execution logs
```
### Target Test Application

The target WEB application site: https://thecatapi.com/

Documentation for API: https://docs.thecatapi.com/api-reference/

**NOTE**: To run your API Test Cases you should get your API Key (for free): https://docs.thecatapi.com/authentication 

Once you get your API Key, just replace it in:
```
Resources/      
| API/
| API_Variables.robot
|
```
```
*** Variables ***
#************************ Common Variables *****************************
${API_KEY}     your_key
${USER_ID}     your_user
${API_HOST}    https://api.thecatapi.com
${API_ALIAS}   mycat
```

### Running your first Test Case
To run your first TC, you can use Robot Framework CLI.
```
\robot_projects\RF_GUI_API\TestLog>robot -i api ..\TestCases
```
Calling *"robot -i"* we can select all TC cases using the argument *"Force Tags    api"* inside the test cases file.

To know more about Tag usage click [here](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#tagging-test-cases)

Another example, if you'd like to call both (API+GUI) test cases:
```
\robot_projects\RF_GUI_API\TestLog>robot -i api -i gui ..\TestCases
```
The reason to call your test locally inside folder *Test Log/* is to keep all test execution logs in the same place. To know more about test logs click [here](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#output-directory)

## Authors

* **Rodrigo Charaba** - *Initial work* 
