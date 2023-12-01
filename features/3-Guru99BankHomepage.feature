Feature: Guru99 Bank of Homepage
   As a BDD student
   I want to test enter my email address to the form
   so I get details about the demo page



Scenario: Register in "Guru Bank 99" with valid email
	Given I am on the sample homepage
	When I enter "carlos@test.com" for Register
    And Press the "Submit" button of the form
	Then I should see the following table:
    | User ID	     |  mngr23537  |
 	| Password       |  Ypegaza    | 


Scenario: Register in "Guru Bank 99" without email
	Given I am on the sample homepage
	When Press the "Submit" button of the form
	Then error "Email ID must not be blank" is show


Scenario: Register in "Guru Bank 99" with invalid email
	Given I am on the sample homepage
	When I enter "carlos@test" for Register
    And Press the "Submit" button of the form
	Then error "Email ID is not valid" is show


Scenario Outline: Register on Guru99 page with a several emails        
    Given I am on the sample homepage
    When I enter "<email>" for Register
    And Press the "Submit" button of the form
    Then I should see <username> id
  
Examples:
    | email               | username    | 
    |  carlos@test.com    |  mngr135053 |
    |  pepe@hotmail.com   |  mngr123467 |	  
    |  lucas@gmail.com    |  mngr187654 |


Scenario: Enter only a character in the email textbox
	Given I am on the sample homepage
	When I enter "c" for Register
	Then error "Email ID is not valid" is show