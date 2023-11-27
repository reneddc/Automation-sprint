Feature: Telecom Project verify Add Customer
  As a non registered custormer of Telecom Poject
  I want to add and interact with the add custormers page
  So I can add new customers and know more about this module

@Initial
Scenario: Go to the Telecom Project  
	Given I am on the Guru99 homepage
	When I click the Telecom Project link
        Then I should see the Guru99 Telecom Project screen

Scenario: Add customer by homepage with empty fills
	Given I am on the Telecom Project homepage
        When I click the Add Customer Link
        And the done radio button is disabled
        And the pending radio button is disabled
        And the "fname" fill is empty
        And the "lname" fill is empty
        And the "email" fill is empty
        And the "message" fill is empty
        And the "telephoneno" fill is empty
        When I click the Submit button
        Then the error "please fill all fields" is show

@actual
Scenario: Add customer by homepage with empty fills
	Given I am on the Telecom Project homepage
        When I click the Add Customer Link
        And the done radio button is disabled
        And the pending radio button is disabled
        And the "fname" fill is empty
        And the "lname" fill is empty
        And the "email" fill is empty
        And the "message" fill is empty
        And the "telephoneno" fill is empty
        When I click the Submit button
        Then the error "please fill all fields" is show