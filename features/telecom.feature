Feature: Telecom Project verify Add Customer
  As a non registered custormer of Telecom Poject
  I want to add and interact with the add custormers page
  So I can add new customers and know more about this module

@Initial
Scenario: Go to the Telecom Project  
	Given I am on the Guru99 homepage
	When I click the Telecom Project link
        Then I should see the Guru99 Telecom Project screen

Scenario: Add customer by homepage link 
	Given I am on the Telecom Project homepage
	And I click the Add Customer link
        And the "done" radio button is disabled
        And the "pending" radio button is disabled
