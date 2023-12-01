Feature: Add Customer of section Telecom Project
   As a BDD student
   I want to add a customer
   so I will get my customer ID for next transactions

Background: 
    Given I am on the sample homepage
    And I press the option "Telecom Project" of the navbar


Scenario: Add custumer with empty form
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When Press the "Submit" button
	Then I should see the error alert "please fill all fields"


Scenario: Add custumer only with Background Check selected
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When Select the Done option of radio button
    And Press the "Submit" button
	Then I should see the error alert "please fill all fields"

@saveCustomerID
Scenario: Add custumer filling only the billing form, not the Background check
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When I enter the Billing Address required fields as show below
        |FirstName: 	        | Hugo               |
        |LastName: 	            | Sanchez            |
        |Email: 	            | hugo@sanchez.com   |
        |Enter your Addrress:   | Sacaba   |	
        |Mobile Number: 	    | 65344375           |
    And Press the "Submit" button
	Then I should see a table with the following information:
        | Customer ID	    |  282412            |


Scenario: Add custumer only clicking in the fields, but not typing
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When I click in the following fields
        |fields	        |
        |FirstName: 	        |
        |LastName: 	            |
        |Email: 	            |
        |Enter your Addrress:   |	
        |Mobile Number: 	    |
	Then I should see the following error messages:
        |messages	        |
        |Customer name must not be blank	        |
        |Customer name must not be blank 	        |
        |Email-ID must not be blank 	            |
        |Address Field must not be blank            |	
        |Mobile no must not be blank 	            |


Scenario: Add custumer without email
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When Select the Done option of radio button
    And I enter the Billing Address required fields as show below
        |FirstName: 	        | Hugo               |
        |LastName: 	            | Sanchez            |
        |Email: 	            |    |
        |Enter your Addrress:   | Sacaba   |	
        |Mobile Number: 	    | 65344375           |
	And Press the "Submit" button
	Then I should see the error alert "please fill all fields"


Scenario: Add custumer with an invalid number
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When Select the Done option of radio button
    And I enter the Billing Address required fields as show below
        |FirstName: 	        | Hugo               |
        |LastName: 	            | Sanchez            |
        |Email: 	            | hugo@sanchez.com   |
        |Enter your Addrress:   | Sacaba   |	
        |Mobile Number: 	    | aaa           |
	And Press the "Submit" button
	Then I should see the error alert "please fill all fields"


@last
Scenario: Reset the Add customer form
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When Select the Done option of radio button
    And I enter the Billing Address required fields as show below
        |FirstName: 	        | Hugo               |
        |LastName: 	            | Sanchez            |
        |Email: 	            | hugo@sanchez.com   |
        |Enter your Addrress:   | Sacaba   |	
        |Mobile Number: 	    | 65344375           |
	And Press the "Reset" button
	Then I should see all the fields empty like:
        |FirstName 	        |               |
        |LastName	        |               |
        |Email 	            |               |	
        |Mobile Number 	    |               |


@last
@saveCustomerID
Scenario: Add custumer with valid values
	Given I am on the Telecom Project section
    And I press the "Add Customer" link
    And I see the "Background check" form
    And I see the "Billing Address" form
    When Select the Done option of radio button
    And I enter the Billing Address required fields as show below
        |FirstName: 	        | Hugo               |
        |LastName: 	            | Sanchez            |
        |Email: 	            | hugo@sanchez.com   |
        |Enter your Addrress:   | Sacaba   |	
        |Mobile Number: 	    | 65344375           |
    And Press the "Submit" button
	Then I should see a table with the following information:
        | Customer ID	    |  282412            |