*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value an it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Page Should Not Contain  nappia painettu 0 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa