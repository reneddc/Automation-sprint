Feature: Add Tariff Plan to Customer of section Telecom Project
   As a BDD student
   I want to add a tariff plan to customer 
   so I will have an approved tariff plan

Background: 
    Given I am on the sample homepage
    And I press the option "Telecom Project" of the navbar


Scenario: Submit an empty Customer ID
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan to Customer" link
    And I see the "Add Tariff Plan to Customer" title
    When Press the "submit" button
	Then I should see the error alert "Please Correct Value Input"

@backToCustomerIDForm
Scenario Outline: Submit an invalid Customer ID
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan to Customer" link
    And I see the "Add Tariff Plan to Customer" title
    When I enter "<customerID>" in the field "Enter Your Customer ID"
    When Press the "submit" button
	Then I should see the message "Please Input Your Correct Customer ID"
    And I see the button "Add Tariff Plan to Customer"

    Examples:
        |customerID |
        |1 	        |
        |11	        |
        |111        |
        |1111       |
        |11111      |
        |111111     |



Scenario Outline: Submit characters in Customer ID
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan to Customer" link
    And I see the "Add Tariff Plan to Customer" title
    When I enter "<customerID>" in the field "Enter Your Customer ID"
    Then I should see the message "<message>"
    And Press the "submit" button
	And I should see the error alert "Please Correct Value Input"

    Examples:
        |customerID     |message                            |
        |14795a	        |Characters are not allowed         |
        |1479-5	        |Special characters are not allowed |


