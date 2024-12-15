
Feature: Edit Profile
    As a user,
    I want to edit my profile
    So my information can be updated

    Scenario: User wants to modify profile
        Given the user is on a page with the profile button
        When they click in the profile button
        Then they should be redirected to the profile settings page
        And they should be able to click the Edit Profile Button
        When they click the Edit Profile button
        Then they should be redirected to the profile page
        And they should be able to edit their profile and save
