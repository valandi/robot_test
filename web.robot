*** Settings ***
Library     SeleniumLibrary
Library     EyesLibrary     runner=web_ufg

Test Setup    Setup
Test Teardown    Teardown

*** Variables ***
&{LOGO}     id=hplogo                 xpath=//*[@id="hplogo"]
${BROWSER}        Chrome
${URL}      https://applitools.github.io/demo/TestPages/FramesTestPage/

*** Keywords ***
Setup
    Open Browser                              ${URL}      ${BROWSER}

Teardown
    Close All Browsers

*** Test Cases ***
Check Window
    Eyes Open
    Eyes Check Window    Ignore Region By Coordinates    [12 22 2 2]
    Eyes Close Async

Check Window Fully
    Eyes Open
    Eyes Check Window   Fully
    Eyes Close Async

Check With Get All Tests Results
    Eyes Open
    Eyes Check Window
    Eyes Close Async
