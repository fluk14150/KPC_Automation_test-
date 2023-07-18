*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Test Cases ***
TC-001 To verify that users can login successfully when put a correct username and password
        login_page.Open browser and go to 'http://the-internet.herokuapp. com/login'
        login_page.Put username 'tomsmith' and password 'SuperSecretPassword!'
        securearea_page.Click the logout button
        SeleniumLibrary.Close Browser
TC-002 To verify that users can login unsuccessfully when they put a correct username but wrong password.
        login_page.Open browser and go to 'http://the-internet.herokuapp. com/login'
        login_page.Put username 'tomsmith' and password 'Password!'.
        SeleniumLibrary.Close Browser
TC-003 To verify that users can login unsuccessfully when they put a username that did not exist.
        login_page.Open browser and go to 'http://the-internet.herokuapp. com/login'
        login_page.Put username 'tomholland' and password 'Password!'.
        SeleniumLibrary.Close Browser