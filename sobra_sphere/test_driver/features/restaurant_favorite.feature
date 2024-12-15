Feature: Mark Restaurant as Favorite
    As a user,
    I want to mark a restaurant as favourite,
    So that I can get notifications about that restaurant specifically

    Scenario: User wants to mark a restaurant as a favorite
        Given the user is on the restaurant's page
        When they click on the "Add to Favorites" button
        Then the restaurant should be successfully marked as a favorite
