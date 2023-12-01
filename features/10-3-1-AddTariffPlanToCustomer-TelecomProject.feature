Feature: Add Tariff Plan to Customer of section Telecom Project
   As a BDD student
   I want to add a tariff plan to customer 
   so I will have an approved tariff plan

Background: 
    Given I am on the sample homepage
    And I press the option "Telecom Project" of the navbar
    And I press the "Add Customer" link
    When Select the Done option of radio button
    And I enter the Billing Address required fields as show below
        |FirstName: 	        | Hugo               |
        |LastName: 	            | Sanchez            |
        |Email: 	            | hugo@sanchez.com   |
        |Enter your Addrress:   | Sacaba             |	
        |Mobile Number: 	    | 65344375           |
    And Press the "Submit" button
    And I save the customerId generated
    And I press the Home link below the CustomerId generated


Scenario: Add tariff plan to customer without selecting tariff plan
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan to Customer" link
    And I see the "Add Tariff Plan to Customer" title
    When I enter the customerID created before
    And Press the "submit" button
    Then I should see the message "Welcome to add customer tariff plan Hugo"
    And I see the "Approved" Tariff Plans
    And I see the "Unaproved" Tariff Plans
    And Press the "Add Tariff Plan to Customer" button
	And I should see the message "Congratulation Tariff Plan assigned"

@last
Scenario: Add tariff plan to customer without selecting tariff plan
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan to Customer" link
    And I see the "Add Tariff Plan to Customer" title
    When I enter the customerID created before
    And Press the "submit" button
    Then I should see the message "Welcome to add customer tariff plan Hugo"
    And I see the "Approved" Tariff Plans
    And I see the "Unaproved" Tariff Plans
    And I select the Approved Tariff Plan
    And Press the "Add Tariff Plan to Customer" button
	And I should see the message "Congratulation Tariff Plan assigned"