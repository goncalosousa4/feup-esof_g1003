
Feature: Access to Previous Orders
    As a user,
    I want to have a register of previous orders,
    So that I can keep track of what I've bought

    Scenario: User wants to access a register of previous orders
        Given the user is logged in
        When they navigate to the orders section
        Then they should be able to view a list of their previous orders
