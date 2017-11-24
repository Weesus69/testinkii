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
${LINK1}          link=click here
${PARTIAL}        partial link=here
${LINK2}          tag=a

*** Test Cases ***
clicking link
    click link      ${LINK1}

clicking partial link
    click link      ${PARTIAL}

Checking all links
    @{LINKS}    get webelements     ${LINK2}
    :FOR    ${var}    IN    @{LINKS}
    \    Log    ${var}

Clicking inside and outside box links
    go to       http://demo.guru99.com/selenium/block.html
    click link      partial link=Inside
    go to       http://demo.guru99.com/selenium/block.html
    click link      partial link=Outside'

clicking image link
    go to      https://www.facebook.com/login/identify?ctx=recover
    click element   css=div.lfloat._ohe > h1 > a > i
    title should be     Facebook – kirjaudu sisään tai rekisteröidy

TÄHÄ JÄÄTIIN:
https://www.guru99.com/accessing-links-tables-selenium-webdriver.html
PART 2 READING A TABLE


*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
