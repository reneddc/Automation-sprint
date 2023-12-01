Feature: Guru99 Insurence Verify Registration
    In order to get the best car insurance coverage on Guru99 Insurance
    As a registered customer
    I want to navigate to the car insurance section and test the online shopping options

Background: 
    Given I am on the Insurance Project
    
Scenario: Register a user on site        
	And I click the "Register" button
	When I enter the required fields
    |Title: 	         | Mrs                   |
	|First Name: 	     | Pepito                |
    |Surname: 	         | Perez                 |
    |Phone: 	         | 1234234               |
    |Year            	 | 1990                  |
    |Month            	 | April                 |
    |Date            	 | 10                    |
    |Full or Provisional:| Provisional           |
    |Licence Period:     | 5                     |	
    |Occupation:         | Student               | 	
    |Street: 	         | Av. Pando             |
    |City: 	             | Cochabamba            |
    |County: 	         | Bolivia               |
    |Post code:          | 0000                  | 
    |Email:              | pepitope10@gmail.com  |
    |Password:           | prueba123             |
    |Confirm password:   | prueba123             |
	And send my registration form of insurance

Scenario: Login in the Guru99 Insurence
	When I enter my email and password
	And I click the "Login" buton
    Then I should see the Guru99 Insurence Project screen