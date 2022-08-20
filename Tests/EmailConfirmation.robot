Library             SeleniumLibrary
Library             ../PageObjects/Library/EmailParserLib.py

*** Test Cases ***
Email Confirmation Test
    Open Browser        your_url        Chrome
    # Navigate to your app and enter Email
    # Now use the keyword defined in EmailParserLib.py
    # Parse first email in the list (with index starting from 1)
    Generate Email Html File    1       Your Company name (whatever subject you have)
    # Now the file will be generated in your current directory
    # Now, open the HTML file in the current browser and click the confirmation link
    ${emailPath} =                      Get Email File Path
    Go To                               file://${emailPath}
    # Do the next steps in your test after the email is confirmed and then close the browser
    Close Browser