*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    gc
${REGISTER_URL}   https://vaccine-haven.herokuapp.com/reservation
${INFO_URL}       https://vaccine-haven.herokuapp.com/info
${MAIN_URL}       https://vaccine-haven.herokuapp.com/
${ID}       9621054603071
${SITE_NAME}        OGYHSite
${VACCINE}         Pfizer

*** Test Cases ***
Test Reservation
    Go to Register page
    Input user information
    Click reservation button

Cancel the reservation
    Go to my info page
    Input citizen id
    Click submit button 
    Click cancel button

*** Keywords ***
Go to Register page
    Open Browser  ${REGISTER_URL}  ${BROWSER}
    Set Selenium Speed  0.3
Input user information
    Input Text    identifier=citizen_id    ${ID}
    Click Element  identifier=site_name
    Select From List by Value  identifier=site_name   ${SITE_NAME}
    Click Element  identifier=vaccine_name     
    Select From List by Value  identifier=vaccine_name   ${VACCINE}
Click reservation button
    Click Button  identifier=reserve__btn

Go to my info page
    Wait Until Location Is      ${MAIN_URL}
    Go To       ${INFO_URL}
    Set Selenium Speed  0.3
Input citizen id
    Input Text    identifier=citizen_id    ${ID}
Click submit button
    Click Button  identifier=info__btn
Click cancel button
    Click Button  identifier=cancel__btn