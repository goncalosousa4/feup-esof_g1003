Feature: Information about Sales
    As a staff member,
    I want to have information about sales
    So that I can keep track of movements

    Scenario: Staff member wants to access information about sales
        Given the staff member is logged into the app
        When they navigate to the sales section
        Then they should be able to view detailed information about sales movements
