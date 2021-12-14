*** Settings ***
Documentation    Suite description
Resource    test.robot

*** Variable ***
${email_field}    //*[@id="txtEmail"]
${pw_field}       //*[@type="password"]
${login_oauth_btn}  //*[text()="Log in"]
${tick_box}     //*[@class="dc-checkbox__box"]
${token_field}   //*[@class="dc-input__field"]

*** Test Cases ***
Open Settings
    Login   ${my_email}     ${my_pw}
    Clicking Scopes
    Generate Token
    Delete Token