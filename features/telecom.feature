Feature: Telecom Project verify Add Customer
  As a non registered custormer of Telecom Poject
  I want to add and interact with the add custormers page
  So I can add new customers and know more about this module

@Initial
Scenario: Go to the Telecom Project  
	Given I am on the Guru99 homepage
	When I click the Telecom Project link
        Then I should see the Guru99 Telecom Project screen
@actual
Scenario: Add customer from homepage with empty fills
	Given I am on the Telecom Project homepage
        When I click the Add Customer Link from "homepage"
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
Scenario: Add customer from lateral menu with empty fills
	Given I am on the Telecom Project homepage
        When I click the menu button
        And I click the Add Customer Link from "menu"
        And the done radio button is disabled
        And the pending radio button is disabled
        And the "fname" fill is empty
        And the "lname" fill is empty
        And the "email" fill is empty
        And the "message" fill is empty
        And the "telephoneno" fill is empty
        When I click the Submit button
        Then the error "please fill all fields" is show

@last
Scenario: Add customer with example data and empty radio buttons
        Given I am on the Telecom Project homepage
        When I click the Add Customer Link from "homepage"
        When I enter the required fields as show below
        |First Name:    | Pepito             |
        |Last Name:     | Perez              |
        |Email:         | pepe@pepazo.com    |
        |Address:       | Av. America #123   |
        |Phone:         | Cochabamba         |
        And I click the Submit button
        Then the access screen is showed