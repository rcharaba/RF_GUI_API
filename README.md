# Robot Framework GUI + API Testing

This project is a hybrid project (GUI+API) using Robot Framework coding best practices, simulating a real project. I got the coding best practices from: [HowToWriteGoodTestCases](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst)

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
5. (Optitional) Install [Pycharm](https://www.jetbrains.com/pt-br/pycharm/download/#section=windows) IDE

### Project Structure
      PageObjects/    # GUI locators files
      Resources/      # A common style in Robot Framework to place high level and reusable keyword implementations
      | API/          # API Keywords
      | GUI/          # GUI Keywrods
      |
      TestCases/      # Test Cases files
      | API/          # API Test Cases organized in folder for each methode
      | GUI/          # GUI Test Cases organized in folder for each user action
      |
      TestData/       # Source data for Test Cases files
      | API/          # Input data for API Test Cases
      | GUI/          # Input data for GUI Test Cases
      |

### Running your first Test Case
... under construction

## Authors

* **Rodrigo Charaba** - *Initial work* 
