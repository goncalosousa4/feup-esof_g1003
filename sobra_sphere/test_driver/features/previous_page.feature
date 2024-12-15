Feature: Go Back to Previous Page
    As a user,
    I want to go back to the previous page
    So I can keep going with my order

    Scenario: User wants to access previous page
        Given the user is in a page that have the back button
        When they press the back button
        Then they should be able to go to previous page
