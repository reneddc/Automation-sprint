Feature: Bank Project Test
	To test the login functionality
	As a user
	I want to navigate to the Bank Project, click on the "here" link, enter an email, and submit the form

	Scenario: Navigate to Bank Project and submit email
		Given I am on the Bank Project login page
		When I click on the link with text "here"
		And I press enter "Lucas220@gmail.com" into the Email ID field
		Then I come back to the Bank Project
		Then I should see the login credentials table on the credentials page:
			| UserID      | Password |
			| mngr541807  | vezasym  |

	Scenario: Log in with invalid credentials
			Given I am on the banking application login page
			When I enter "mngr349026" into the username field
			And I enter "amUpenx" into the password field
			And I click the login button
			Then I should see an alert with the message "User or Password is not valid"
			And I should remain on the banking application login page

	Scenario: Log in with incorrect UserID
		Given I am on the Bank Project login page
		When I enter "@incorrect_user_id" into the UserID field on BP
		And I enter "@valid_password" into the Password field on BP
		And I click the LOGIN button
		Then I should see an error alert with the message "User is not valid"