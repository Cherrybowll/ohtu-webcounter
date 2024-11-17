*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa