*** Settings ***
Library     SeleniumLibrary
Library        String


Resource    ${CURDIR}/keyword/pages/login_page.robot
Resource    ${CURDIR}/testcase/scenario.robot
Resource    ${CURDIR}/keyword/pages/securearea_page.robot