*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When a value is entered and button pressed the counter increments
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    Input Text  kasvata_text  2
    Click Button  Kasvata
    Page Should Contain  nappia painettu 2 kertaa

When no value is entered and button is pressed nothing changes
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    Click Button  Kasvata
    Page Should Contain  nappia painettu 0 kertaa