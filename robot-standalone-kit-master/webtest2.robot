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
${URL}            https://en.wikipedia.org/wiki/New_York_(state)

*** Test Cases ***
Web Test
    #Setup chromedriver
    Open Browser    ${URL}    ${BROWSER}
    ${population1910}=    Get NY Population    1910
    Should Be Equal    ${population1910}    9,113,614

*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}

Get NY Population
    [Arguments]    ${arg1}
    Page Should Contain    ${arg1}
    ${ARVO}=    Get Text    css=table.toccolours > tbody > tr:nth-child(15) > td:nth-child(2)
    Log    ${ARVO}
    [Return]    ${ARVO}
