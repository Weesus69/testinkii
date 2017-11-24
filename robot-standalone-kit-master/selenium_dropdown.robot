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
${URL}            http://demo.guru99.com/selenium/newtours/register.php
${DLIST}          name=country
${FRUITS}          id=fruits

*** Test Cases ***
Selecting value from drop-down list by item name
    select from list    ${DLIST}    ANTARCTICA

Selecting value from drop-down list by item index
    select from list by index   ${DLIST}    18

Selecting value from drop-down list by value
    select from list by value   ${DLIST}    ANGOLA

Selecting multiple items by value
    go to   http://jsbin.com/osebed/2
    select from list by value   ${FRUITS}   banana  apple

Selecting multiple items by index
    go to   http://jsbin.com/osebed/2
    select from list by index   ${FRUITS}   0   2


*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
