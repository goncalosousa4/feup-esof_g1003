Feature: Notification for Available Bags
    As a user,
    I want to receive notifications about available bags of food
    So that I can receive notifications about available bags and quickly purchase them before they're sold out.

    Scenario: User wants to receive notifications about available bags of food
        Given the user has enabled notifications for the app
        When there are new available bags
        Then the user should receive a notification alerting them about the available bags
