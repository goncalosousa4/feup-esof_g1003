Feature: Update Order Status
    As a staff member,
    I want to update the order status
    So the client can be informed

    Scenario: Staff member wants to update the order status
        Given the staff member is logged into the app
        When they navigate to the orders section
        And they select an order to update
        Then they should be able to change the order status and inform the client
