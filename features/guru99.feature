Feature: Guru99 Insurence Verify Registration
    In order to get the best car insurance coverage on Guru99 Insurance
    As a registered customer
    I want to navigate to the car insurance section and test the online shopping options

Scenario: Register a user on site        
	Given I am on the Insurance Project
	And I click the "Register" button
	When I enter the required fields as show belowss
    |Title: 	        | Mr                    |
	|First Name: 	    | Pepito                |
    |Surname: 	        | Perez                 |
    |Phone: 	        | 1234234               |
    |Date of Birth: 	| 21/12/1990            |
    |Full: 	            |                       |
    |Address:           | Av. America #123      |	
    |Licence Period:    | 2                     |
    |Occupation:        | Academic              | 	
    |Street: 	        | Av. Pando             |
    |City: 	            | Cochabamba            |
    |County: 	        | Bolivia               |
    |Post code:         | 0000                  | 
    |Email:             | tjonatan0320@gmail.com|
    |Password           | prueba123             |
    |Confirm password   | prueba123             |
	And send my registration form


Scenario: Find a flight with a register user
    Given I am on the Insurance Project
    And I enter my username and password
    When I press the Login button
    Then Broker Insurance WebPage is displayed

Scenario: Login a user on site        
	Given I am on the Insurance Project
	And I enter my user and password
	When I press the Login button
    Then Broker Insurance WebPage is displayed