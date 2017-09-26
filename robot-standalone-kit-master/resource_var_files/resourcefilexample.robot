*** Settings ***
Suite Setup       Setup chromedriver
Suite Teardown    Close All Browsers
Resource          C:/koodit/testinkii/robot-standalone-kit-master/resource_var_files/resources/resexample.txt

*** Test Cases ***
Web Test
    #Setup chromedriver
    Open Browser    ${URL}    ${BROWSER}
    Take Screenshot    pic.jpg 80%
    ${population1910}=    Get NY Population    1910
    Should Be Equal    ${population1910}    9,113,614

*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
