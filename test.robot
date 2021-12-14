*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
Login
    [arguments]    ${email}    ${pw}
    Open Browser    url=https://app.deriv.com/account/api-token    browser=chrome
    set window size    1400   1028
    wait until page contains element    ${email_field}  60
    input text      ${email_field}    ${email}
    input text      ${pw_field}   ${pw}
    click element   ${login_oauth_btn}

Clicking Scopes
    wait until page contains element    //*[@class="da-api-token__timeline"]
    sleep   2
    click element    ${tick_box}
    click element    ${tick_box}
    click element    ${tick_box}
    click element    ${tick_box}
    click element    ${tick_box}

Generate Token
    sleep   3
    click element   ${token_field}
    input text   ${token_field}   Test Automation
    sleep   2
    click element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large da-api-token__button"]
    sleep   3
    wait until page contains element     //*[@class="dc-popover__target"]     60
    click element   //*[@class="dc-icon dc-clipboard da-api-token__clipboard"]

Delete Token
    sleep   2
    click element   //*[@class="dc-btn dc-btn--secondary dc-btn__small"]
    wait until page contains element     //*[@class="dc-btn__group"]    60
    click element   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/div/button[2]

