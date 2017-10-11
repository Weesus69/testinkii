*** Settings ***
Documentation     To test that user can navigate to wikipedia and
...               check that RF wiki-page exists and contains phrase mentioned in TC
Library           OperatingSystem
Library           C:\\koodit\\testinkii\\robot-standalone-kit-master\\omat_kirjastot\\MunKirjasto.py
Library           C:\\koodit\\testinkii\\robot-standalone-kit-master\\omat_kirjastot\\LuokkaKirjasto.py

*** Variables ***
${CDRIVER}        C:\\koodit\\chromedriver\\chromedriver.exe
${BROWSER}        chrome
${URL}            https://en.wikipedia.org/wiki/New_York_(state)

*** Test Cases ***
Testi yksi
    terve
    hello    pertti
    shaibaa
    Tassapa Sulle Uus keywordi
    joiku    eka
    joiku    toka    tämäkorvaadefaultfraasin
    mieli    eka    toka    koka    neka
    ${TEKSTI}    palauta_arvo
    log    ${TEKSTI}

*** Keywords ***
