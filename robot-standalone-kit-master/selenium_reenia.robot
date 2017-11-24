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
${URL}            http://demo.guru99.com/selenium/newtours/

*** Test Cases ***
Check title
    ${TITLE}  get title
    should be equal  ${Title}   Welcome: Mercury Tours

FB case
    Go To   http://www.facebook.com
    ${ELEMENT}  get webelement   id=email
    log     ${ELEMENT}
    input text      ${ELEMENT}  terrveee

Selecting correct frame and clicking link
    Go to   http://demo.guru99.com/selenium/deprecated.html
    select frame    classFrame
    click link      Deprecated

Closing pop-up window
    go to   http://jsbin.com/usidix/1
    click button    css=body > input[type="button"]
    dismiss alert
    sleep  5 seconds





*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
