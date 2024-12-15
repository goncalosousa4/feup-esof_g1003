Feature: Food Bag Registration
    As a staff member,
    I want to register/create food bags
    So that customers can buy them

    Scenario: Staff member wants to register/create food bags
        Given the staff member is logged into the app
        When they navigate to the bag creation section
        And they fill in the necessary details for the bag
        Then the bag should be successfully created and available for customers to purchase
