*** Settings ***
Suite Setup       Setup chromedriver
Library           Selenium2Library
Library           OperatingSystem

*** Variables ***
${CDRIVER}        C:\\koodit\\chromedriver\\chromedriver.exe

*** Test Cases ***
Web Test
    #Setup chromedriver
    Open Browser    http://www.google.fi    chrome
    Page Should Contain    Google
    #Click Link href=www.google.com
    Click Element xpath=//*[@id="fkbx-spch"]
    Close All Browsers

*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
