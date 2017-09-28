*** Settings ***
Documentation     To test that user can navigate to wikipedia and
...               check that RF wiki-page exists and contains phrase mentioned in TC
Suite Setup       Setup chromedriver
Suite Teardown    Close All Browsers
Variables         ${PATH}variables/varexample.py
Library           Selenium2Library    #Suite Teardown    Close All Browsers
Library           OperatingSystem
Library           Screenshot    screenshot_directory=c:\\temp

*** Variables ***
${PATH}           C:/koodit/testinkii/robot-standalone-kit-master/resource_var_files/

*** Test Cases ***
Web Test
    [Tags]    pilsneri
    #Setup chromedriver
    Open Browser    ${URL}    ${BROWSER}
    Take Screenshot    pic.jpg 80%
    ${population1910}=    Get NY Population    1910
    Should Be Equal    ${population1910}    9,113,614
    Log    Current time is: ${CURRENT_TIME}
    Log    Operating system is: ${OS}
    Log    Your machine is: ${KONE}
    Log    Your computer processor is: ${PROSSU}

Web test2
    [Tags]    kalija
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
