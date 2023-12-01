Feature: Pay Billing of section Telecom Project
   As a BDD student
   I want to test the Pay Billing section of Telecom Project
   so I will know the prine to pay



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

Scenario: Pay Billing with an empty Customer ID
	Given I am on the Telecom Project section
    And I press the "Pay Billing" link
    And I see the "Pay Billing" title
    When Press the "submit" button
	Then I should see the error alert "Please Correct Value Input"


Scenario Outline: Submit an invalid Customer ID to Pay Billing
	Given I am on the Telecom Project section
    And I press the "Pay Billing" link
    And I see the "Pay Billing" title
    When I enter "<customerID>" in the field "Enter Your Customer ID"
    When Press the "submit" button
	Then I should see the message "Please Input Your Correct Customer ID"
    And I see the button "Pay Billing"

    Examples:
        |customerID |
        |1 	        |
        |11	        |
        |111        |
        |1111       |
        |11111      |
        |111111     |


Scenario Outline: Submit an invalid Customer ID to Pay Billing
	Given I am on the Telecom Project section
    And I press the "Pay Billing" link
    And I see the "Pay Billing" title
    When I enter "<customerID>" in the field "Enter Your Customer ID"
    Then I should see the message "<message>"
    And Press the "submit" button
	And I should see the error alert "Please Correct Value Input"

    Examples:
        |customerID     |message                            |
        |14795a	        |Characters are not allowed         |
        |1479-5	        |Special characters are not allowed |

@last
Scenario: Pay Billing with a valid Customer ID
	Given I am on the Telecom Project section
    And I press the "Pay Billing" link
    And I see the "Pay Billing" title
    When I enter the customerID created before
    And Press the "submit" button
    Then I should see the customerID in the screen
    And I should see the message "Customer Name:- Hugo"
    And I should see the next table:
    |Free Usage Limit   |Actual Usage   |Over Free  |Usage Charges  |
    |200	            |220	        |20	        |50             |
    |100	            |110	        |10	        |200            |
    |500	            |400	        |0	        |0              |
    And I should see the next additional information:
    |Total 	                    |Amount |
    |Tariff Plan Amount	        |500 |
    |Usage Charges	            |250 |
    |Total Bill	                |750 |
