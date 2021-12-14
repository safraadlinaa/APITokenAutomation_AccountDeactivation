*** Settings ***
Documentation    Suite description
Resource    deactivated.robot

*** Variable ***
${email_field}    //*[@id="txtEmail"]
${pw_field}       //*[@type="password"]
${login_oauth_btn}  //*[text()="Log in"]
${deact_btn}    //*[@class="dc-btn dc-btn--primary dc-btn__large deactivate-account__button"]
${tickbox}   //*[@class="dc-checkbox__box"]


*** Test Cases ***
Deactivate Account
    Login   ${my_email}     ${my_pw}
    Acc Deactivation