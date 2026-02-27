*** Settings ***
Documentation   This is some basic info about the whole suite
Library         SeleniumLibrary

*** Variables ***
    ${BROWSER}          chrome
${REMOTE_URL}       http://localhost:4444/wd/hub
${PLATFORM}         Windows 10
${BROWSER_VERSION}  latest

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    # Initialize Selenium
    Set Selenium Speed      0.2s
    Set Selenium Timeout    5s

    # Open browser in Sauce Labs
    Open Browser            http://www.amazon.com    ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities={"platformName": "${PLATFORM}", "browserVersion": "${BROWSER_VERSION}"}

    # Resize browser window for recording
    Set Window Position     341  169
    Set Window Size         1024  700
    Maximize Browser Window

    # Buscar un producto y agregar al carrito
    Input Text              id=twotabsearchtextbox    Ferrari 458
    Click Button            id=nav-search-submit-button
    Wait Until Page Contains    Resultados
    Click Image             class=s-image
    Wait Until Page Contains    Rastar Coche RC
    Click Element           id=add-to-cart-button
    Wait Until Page Contains    Agregado al carrito

    Close Browser

*** Keywords ***
