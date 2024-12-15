Feature: User Registration
    As a user
    I want to register into the app
    So that I can buy a bag

    Scenario: User wants to register into the app to buy a bag
        Given the user is on the registration page
        When they fill in the required registration details and click on the submit button
        Then they should receive a confirmation message that they have successfully registered
