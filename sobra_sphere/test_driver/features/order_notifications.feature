Feature: Notification for Orders
    As a staff member,
    I want to receive notifications about orders placed by customers
    So that I can prepare them for pickup in a timely manner.

    Scenario: Staff member wants to receive notifications about orders placed by customers
        Given the staff member has enabled notifications for orders
        When a new order is placed
        Then the staff member should receive a notification alerting them about the new order
