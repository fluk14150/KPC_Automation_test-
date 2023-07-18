*** Settings ***
Resource    ${CURDIR}/../../import.robot
*** Variables ***
${correct_username}    tomsmith
${correct_Password}    SuperSecretPassword!
${username_box}        //input[@id='username']
${password_box}        //input[@id='password']
${login_button}        //button/i
${web}                 http://the-internet.herokuapp.com/login
${incorrect_password}    Password!
${incorrect_username}    tomholland
*** Keywords ***
Open browser and go to 'http://the-internet.herokuapp. com/login'
        SeleniumLibrary.Open Browser        ${web}       chrome
Put username 'tomsmith' and password 'SuperSecretPassword!'
        SeleniumLibrary.Input Text          ${username_box}        ${correct_username}
        SeleniumLibrary.Input Text          ${password_box}       ${correct_Password}
        SeleniumLibrary.Click Element       ${login_button}
Put username 'tomsmith' and password 'Password!'.
        SeleniumLibrary.Input Text          ${username_box}        ${correct_username}
        SeleniumLibrary.Input Text          ${password_box}        ${incorrect_password}
        SeleniumLibrary.Click Element       ${login_button}
Put username 'tomholland' and password 'Password!'.
        SeleniumLibrary.Input Text          ${username_box}        ${incorrect_username}
        SeleniumLibrary.Input Text          ${password_box}        ${incorrect_password}
        SeleniumLibrary.Click Element       ${login_button}