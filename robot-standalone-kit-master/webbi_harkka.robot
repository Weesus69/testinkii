*** Settings ***
Documentation     To test that user can navigate to wikipedia and
...               check that RF wiki-page exists and contains phrase mentioned in TC
Suite Setup       Setup chromedriver
Library           Selenium2Library
Library           OperatingSystem

*** Variables ***
${CDRIVER}        C:\\koodit\\chromedriver\\chromedriver.exe

*** Test Cases ***
Web Test
    #Setup chromedriver
    Open Browser    http://en.wikipedia.org/    chrome
    Page Should Contain    Wikipedia
    Input Text    //*[@id="searchInput"]    Robot Framework
    Click Element    //*[@id="searchButton"]
    Page Should Contain    The Robot Framework is a generic test automation framework
    Close All Browsers

*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
