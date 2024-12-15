Feature: Access to Current Orders
    As a user,
    I want to access my current orders
    So I can keep track of my orders

    Scenario: User wants to access a register of current orders
        Given the user is logged in
        When they navigate to the orders section
        Then they should be able to view a list of their current orders
