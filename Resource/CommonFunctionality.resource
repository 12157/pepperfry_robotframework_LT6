*** Settings ***
Documentation    this file will keep the configuration details

Library  SeleniumLibrary
Library   OperatingSystem

*** Variables ***
${Browser}  chrome
${URL}   https://www.pepperfry.com/

*** Keywords ***
launch Browser
     Append To Environment Variable    path      ${EXECDIR}${/}Driver
     Open Browser       browser=${Browser}
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Set Screenshot Directory    ${EXECDIR}$(/)Screenshots
     Go To    url=${URL}


