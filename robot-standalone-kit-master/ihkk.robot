*** Settings ***
Library           OperatingSystem

*** Variables ***
${PATH_TO_CHECK}    c:\\temp

*** Test Cases ***
Check Host Configuration
    [Documentation]    Check config...
    # Check existence of c:\temp folder
    Should Exist    ${PATH_TO_CHECK}
    Check Host Date Is    2017

*** Keywords ***
Check Host Date Is
    [Arguments]    ${YEAR}
    [Documentation]    Check date...
    ${host_year}=    Get Time    year
    Should Be Equal    ${host_year}    ${YEAR}
