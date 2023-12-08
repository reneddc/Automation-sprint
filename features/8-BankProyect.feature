Feature: Guru99 Bank Login
  In order to access my account
  As a registered user
  I want to log in to the Guru99 Bank application

Background: 
	Given I am on the "Bank Project" page

Scenario: User logs in with valid credentials
	When the user enters valid UserId and Password
	And clicks the login button
	Then the user should be logged in successfully


Scenario: Login with invalid credentials
	When I enter "mngr541807" into the username field
	And I enter "amUpenx" into the password field
	And I click the login button
	Then I should see an alert with the message "User is not valid"

