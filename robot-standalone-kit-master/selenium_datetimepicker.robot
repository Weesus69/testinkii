*** Settings ***
Documentation     To test that user can navigate to wikipedia and
...               check that RF wiki-page exists and contains phrase mentioned in TC
Suite Setup       Setup chromedriver
Suite Teardown    Close All Browsers
Library           Selenium2LibraryExtension    #Suite Teardown    Close All Browsers
Library           OperatingSystem
#Library           Selenium2LibraryExtension

*** Variables ***
${CDRIVER}        C:\\koodit\\chromedriver\\chromedriver.exe
${BROWSER}        chrome
${URL}            http://demo.guru99.com/selenium



*** Test Cases ***
setting day and time in html5
    ${DAYTIME}  get webelement  xpath=/html/body/form/input[1]
    press key    ${DAYTIME}     TAB
    press key    ${DAYTIME}     9
    press key    ${DAYTIME}     TAB
    press key    ${DAYTIME}     25
    press key    ${DAYTIME}     002017
    #press key    ${DAYTIME}     TAB
    press key    ${DAYTIME}     1255
    click element   css=input[type="submit"]:nth-child(3)
    sleep       3



*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window