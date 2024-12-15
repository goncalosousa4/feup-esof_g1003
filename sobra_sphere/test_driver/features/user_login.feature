Feature: User Login
    As a user
    I want to log in to the app
    So that I can access exclusive features and discounts

    Scenario: User wants to log in to access exclusive features and discounts
        Given the "user" is on the login page
        When they enter their credentials and click on the login button
        Then they should be redirected to the home page with access to exclusive features and discounts
