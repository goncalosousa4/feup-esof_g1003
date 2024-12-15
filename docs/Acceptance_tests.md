
**Acceptance tests**.

<h3>Feature: User Registration</h3>
Scenario: User wants to register into the app to buy a bag<br>
Given the user is on the registration page<br>
When they fill in the required registration details and click on the submit button<br>
Then they should receive a confirmation message that they have successfully registered<br>
<br>
<h3>Feature: Buy a Bag</h3>
Scenario: User wants to buy a bag<br>
Given the user is on the search page<br>
When they click in buy a bag button<br>
Then they should be redirected to checkout page<br>
And they should be able to buy the bad<br>
<br>
<h3>Feature: User Login</h3>
Scenario: User wants to log in to access exclusive features and discounts<br>
Given the user is on the login page<br>
When they enter their credentials and click on the login button<br>
Then they should be redirected to the home page with access to exclusive features and discounts<br>
<br>
<h3>Feature: Notification for Available Bags</h3>
Scenario: User wants to receive notifications about available bags of food<br>
Given the user has enabled notifications for the app<br>
When there are new available bags<br>
Then the user should receive a notification alerting them about the available bags<br>
<br>
<h3>Feature: Restaurant Rating</h3>
Scenario: User wants to rate restaurants based on their experience<br>
Given the user has dined at a restaurant<br>
When they navigate to the restaurant's page<br>
And they provide a rating and feedback<br>
Then their rating and feedback should be submitted successfully<br>
<br>
<h3>Feature: Access to Customer Support</h3>
Scenario: User wants to access customer support<br>
Given the user is facing an issue or has a question<br>
When they navigate to the customer support section<br>
Then they should be able to contact customer support for assistance<br>
<br>
<h3>Feature: Edit Profile</h3>
Scenario: User wants to modify profile<br>
Given the user is on a page with the profile button<br>
When they click in the profile button<br>
Then they should be redirected to the profile settings page<br>
And they should be able to click the Edit Profile Button<br>
When they click the Edit Profile button<br>
Then they should be redirected to the profile page<br>
And they should be able to edit their profile and save<br>
<br>
<h3>Feature: Edit Notifications Settings</h3>
Scenario: User wants to modify notifications settings<br>
Given the user is on a page with the profile button<br>
When they click the profile button<br>
Then they should be redirected to the profile settings page<br>
And they should be able to click the Notifications button<br>
When they click the Notifications button<br>
Then they should be redirected to the notifications<br>
And they should be able to edit their notification settings and save<br>
<br>
<h3>Feature: Mark Restaurant as Favorite</h3>
Scenario: User wants to mark a restaurant as a favorite<br>
Given the user is on the restaurant's page<br>
When they click on the "Add to Favorites" button<br>
Then the restaurant should be successfully marked as a favorite<br>
<br>
<h3>Feature: Access to Previous Orders</h3>
Scenario: User wants to access a register of previous orders<br>
Given the user is logged in<br>
When they navigate to the orders section<br>
Then they should be able to view a list of their previous orders<br>
<br>
<h3>Feature: Access to Current Orders</h3>
Scenario: User wants to access a register of current orders<br>
Given the user is logged in<br>
When they navigate to the orders section<br>
Then they should be able to view a list of their current orders<br>
<br>
<h3>Feature: Go Back to Previous Page</h3>
Scenario: User wants to access previous page<br>
Given the user is in a page that have the back button<br>
When they press the back button<br>
Then they should be able to go to previous page<br>
<br>
<h3>Feature: Food Bag Registration</h3>
Scenario: Staff member wants to register/create food bags<br>
Given the staff member is logged into the app<br>
When they navigate to the bag creation section<br>
And they fill in the necessary details for the bag<br>
Then the bag should be successfully created and available for customers to purchase<br>
<br>
<h3>Feature: Access to Customer Support</h3>
Scenario: Staff member wants to access customer support<br>
Given the staff member is facing a customer inquiry or issue<br>
When they navigate to the customer support section<br>
Then they should be able to access information and contact details for customer support<br>
<br>
<h3>Feature: Notification for Orders</h3>
Scenario: Staff member wants to receive notifications about orders placed by customers<br>
Given the staff member has enabled notifications for orders<br>
When a new order is placed<br>
Then the staff member should receive a notification alerting them about the new order<br>
<br>
<h3>Feature: Access to Restaurant Rating</h3>
Scenario: Staff member wants to access their restaurant's rating<br>
Given the staff member is logged into the app<br>
When they navigate to their restaurant's profile<br>
Then they should be able to view the restaurant's rating<br>
<br>
<h3>Feature: Information about Sales</h3>
Scenario: Staff member wants to access information about sales<br>
Given the staff member is logged into the app<br>
When they navigate to the sales section<br>
Then they should be able to view detailed information about sales movements<br>
<br>
<h3>Feature: Update Order Status</h3>
Scenario: Staff member wants to update the order status<br>
Given the staff member is logged into the app<br>
When they navigate to the orders section<br>
And they select an order to update<br>
Then they should be able to change the order status and inform the client<br>
<br>
