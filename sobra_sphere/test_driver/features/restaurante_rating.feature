Feature: Restaurant Rating
    As a user,
    I want to rate restaurants based on my experience
    So that I can provide feedback to help improve their services.

    Scenario: User wants to rate restaurants based on their experience
        Given the user has dined at a restaurant
        When they navigate to the restaurant's page
        And they provide a rating and feedback
        Then their rating and feedback should be submitted successfully

Feature: Access to Restaurant Rating
    As a staff member,
    I want to have access to my restaurant rating
    So I know what i can improve/change

    Scenario: Staff member wants to access their restaurant's rating
        Given the staff member is logged into the app
        When they navigate to their restaurant's profile
        Then they should be able to view the restaurant's rating
