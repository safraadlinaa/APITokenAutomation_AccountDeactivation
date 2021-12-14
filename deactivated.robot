*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
Login
    [arguments]    ${email}    ${pw}
    Open Browser    url=https://app.deriv.com/account/deactivate-account    browser=chrome
    set window size    1400   1028
    wait until page contains element    ${email_field}  60
    input text      ${email_field}    ${email}
    input text      ${pw_field}   ${pw}
    click element   ${login_oauth_btn}

Acc Deactivation
    sleep   2
    wait until page contains element     ${deact_btn}   60
    click element    ${deact_btn}
    wait until page contains element   //*[@class="deactivate-account-reasons"]   60
    sleep   5
    click element    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[1]
    sleep   5
    wait until page contains element     ${deact_btn}   60
    click element    ${deact_btn}
    wait until page contains element   //*[@class="deactivate-account-reasons"]   60
    sleep   2
    click element   ${tickbox}
    click element   ${tickbox}
    click element   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]
    wait until page contains element    //*[@id="modal_root"]/div/div/div
    sleep   2
    click element   //*[@id="modal_root"]/div/div/div/div[2]/button[1]
    sleep   2
    click element   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]
    click element   //*[@id="modal_root"]/div/div/div/div[2]/button[2]