*** Settings ***
Library    AppiumLibrary
*** Test Cases ***
Open Test Application
    open application    http://localhost:4723/wd/hub    platformName=Android  platformVersion=13    appActivity=LauncherAlias  automationName=Appium    appPackage=com.practo.fabric
    wait until page contains element    com.practo.fabric:id/login_help      10
    click element   com.practo.fabric:id/login_help
    click element    //android.widget.Button[@resource-id="com.practo.fabric:id/card_button" and @text="Sign in with email"]
    input text    com.practo.fabric:id/email_edit_text    mobile.practo+consult1@gmail.com
    input text    com.practo.fabric:id/password_edit_text  practo@321
    click element    com.practo.fabric:id/continue_button
    wait until page contains element    com.android.permissioncontroller:id/grant_dialog    10s
    click element    com.android.permissioncontroller:id/permission_allow_button
     wait until page contains element    com.practo.fabric:id/dialog_title  10s
    click element    com.practo.fabric:id/close

   click element    com.practo.fabric:id/search_bar_image
    click element    //androidx.cardview.widget.CardView[@content-desc="In-clinic Consultation"]/android.view.ViewGroup/android.widget.TextView
    click element    com.practo.fabric:id/search_bar
    input text    com.practo.fabric:id/search_bar   cough
