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

Accepting alert message
    go to   http://demo.guru99.com/selenium/delete_customer.php
    input text    name=cusid    53920
    click button    name=submit
    dismiss alert   accept=True
    sleep  5 seconds

Handling pop-up window
    go to       http://demo.guru99.com/popup.php
    click link      partial link=Click
    select window       url=http://demo.guru99.com/articles_popup.php
    input text      name=emailid     gaurav.3n@gmail.com
    submit form
    sleep   2
    close window
    sleep   2

Getting length of table rows and columns
    go to       http://money.rediff.com/gainers/bsc/dailygroupa?
    @{COLUMNS}      get webelements     xpath=.//*[@id=\"leftcontainer\"]/table/thead/tr/th
    @{ROWS}         get webelements     xpath=.//*[@id=\"leftcontainer\"]/table/tbody/tr/td[1]
    ${RIVIT}        get length      ${ROWS}
    ${SARAKKEET}        get length      ${COLUMNS}
    log to console      rivien lukumäärä=${RIVIT}
    log to console      Sarakkeiden lukumäärä=${SARAKKEET}


*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${CDRIVER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
