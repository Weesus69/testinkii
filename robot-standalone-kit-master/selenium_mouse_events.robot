*** Settings ***
Documentation     To test that user can navigate to wikipedia and
...               check that RF wiki-page exists and contains phrase mentioned in TC
Suite Setup       Setup chromedriver
Suite Teardown    Close All Browsers
#Library           Selenium2Library    #Suite Teardown    Close All Browsers
Library           OperatingSystem
Library           Selenium2LibraryExtension

*** Variables ***
${CDRIVER}        C:\\koodit\\chromedriver\\chromedriver.exe
${BROWSER}        chrome
${URL}            http://demo.guru99.com/selenium/newtours/
${HOMELINK}       link=Home
${HOMEBOX}        xpath=//table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]

*** Test Cases ***
Hovering over web element
    mouse over      ${HOMELINK}
    element background color should be     ${HOMEBOX}   rgba(0, 0, 0, 0)
    sleep       5




*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window