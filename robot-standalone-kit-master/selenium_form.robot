*** Settings ***
Documentation     To test that user can navigate to wikipedia and
...               check that RF wiki-page exists and contains phrase mentioned in TC
Suite Setup       Setup chromedriver
Suite Teardown    Close All Browsers
Library           Selenium2Library    #Suite Teardown    Close All Browsers
Library           OperatingSystem

*** Variables ***
${CDRIVER}        C:\\koodit\\chromedriver\\chromedriver.exe
${BROWSER}        chrome
${URL}            http://demo.guru99.com/selenium/webform/login.html
${EMAIL}          id=email
${PASSU}          id=passwd
${SUBMIT}         id=SubmitLogin
${RADIO1}         vfb-7-1
${RADIO2}         vfb-7-2
${CHECKBOX1}         vfb-6-0

*** Test Cases ***
inputting username and password
    input text      ${EMAIL}    abcd@gmail.com
    input password      ${PASSU}    abcdefghlkjl

Resetting them
    input text      ${EMAIL}    abcd@gmail.com
    input password      ${PASSU}    abcdefghlkjl
    sleep   2
    clear element text      ${EMAIL}
    clear element text      ${PASSU}

Submit credentials by clicking cubmit button
    Wait Until Element Is Visible      ${SUBMIT}    timeout=5
    input text      ${EMAIL}    abcd@gmail.com
    input password      ${PASSU}    abcdefghlkjl
    click element   ${SUBMIT}
    sleep   2

Submit credentials by using submit method
    Wait Until Element Is Visible      ${SUBMIT}    timeout=5
    input text      ${EMAIL}    abcd@gmail.com
    input password      ${PASSU}    abcdefghlkjl
    submit form
    sleep   2

Selecting radio button
    go to       http://demo.guru99.com/selenium/webform/radio.html
    Wait Until Element Is Visible   ${RADIO1}
    click element   ${RADIO1}
    sleep   2
    click element   ${RADIO2}
    sleep   2

Selecting/unselecting checkbox
    go to       http://demo.guru99.com/selenium/webform/radio.html
    Wait Until Element Is Visible   ${RADIO1}
    checkbox should not be selected     ${CHECKBOX1}
    select checkbox         ${CHECKBOX1}
    checkbox should be selected     ${CHECKBOX1}
    unselect checkbox   ${CHECKBOX1}
    checkbox should not be selected     ${CHECKBOX1}



*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
