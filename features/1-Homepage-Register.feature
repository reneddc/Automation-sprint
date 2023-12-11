Feature: Guru99 Bank of Homepage
   As a BDD student
   I want to enter my email address to the form
   so I will have userId and password to navigate in the demo.Guru99 page


Scenario Outline: Register on demo.Guru99 page with a several emails        
    Given I am on the sample homepage
    When I enter "<email>" for Register
    And Press the "Submit" button of the screen
    Then I should see <username> id
  
Examples:
    | email               | username    | 
    |  carlos@test.com    |  mngr135053 |
    |  pepe@hotmail.com   |  mngr123467 |	  
    |  lucas@gmail.com    |  mngr187654 |


Scenario: Register in "Guru Bank 99" without email
	Given I am on the sample homepage
	When Press the "Submit" button of the screen
	Then error "Email ID must not be blank" is show


Scenario Outline: Register in "Guru Bank 99" with invalid email
	Given I am on the sample homepage
	When I enter "<email>" for Register
    And Press the "Submit" button of the screen
	Then error "Email ID is not valid" is show

Examples:
    | email                 | 
    |  carlos@test          |
    |  pepehotmail.com      |	  
    |  lucas                |