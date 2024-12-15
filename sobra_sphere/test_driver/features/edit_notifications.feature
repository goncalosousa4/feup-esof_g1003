Feature: Edit Notifications Settings
    As a user,
    I want to edit the notifications
    So I can have the best experience and always be updated

    Scenario: User wants to modify notifications settings
        Given the user is on a page with the profile button
        When they click the profile button
        Then they should be redirected to the profile settings page
        And they should be able to click the Notifications button
        When they click the Notifications button
        Then they should be redirected to the notifications
        And they should be able to edit their notification settings and save
