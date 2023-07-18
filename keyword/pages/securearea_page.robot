*** Settings ***
Resource    ${CURDIR}/../../import.robot
*** Variables ***
${logout_button}        //i[contains(text(),'Logout')]     

*** Keywords ***
Click the logout button
        SeleniumLibrary.Wait Until Element Is Visible    ${logout_button}
        SeleniumLibrary.Click Element       ${logout_button}  
            
            