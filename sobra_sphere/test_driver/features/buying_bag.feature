Feature: Buy a Bag
    As a user
    I want to create an order
    So I can have a one

    Scenario: User wants to buy a bag
        Given the user is on the search page
        When they click in buy a bag button
        Then they should be redirected to checkout page
        And they should be able to buy the bad
