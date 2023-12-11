Feature: Register New User in Guru99 Insurance
    As a new user of Guru99 Insurance
    I want to sign up as a new user
    So I will login like real user

Background: 
    Given I am on the sample homepage
    And I click the "Insurance Project" link of the navbar
    

Scenario: Register new user in Guru99 Insurance    
    Given I am in Guru99 Insurance "Log In" page
	And I click the "Register" button-link
	And I enter the register Guru99 Insurances fields
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
	When Press the "Create" button of the screen
    Then I should see the Guru99 Insurance "Log In" page

Scenario: Register new user in Guru99 Insurance with empty form
    Given I am in Guru99 Insurance "Log In" page
	And I click the "Register" button-link
	When Press the "Create" button of the screen
    Then I should see the Guru99 Insurance "Log In" page


Scenario Outline: Register new user in Guru99 Insurance with invalid field "Confirm password"
    Given I am in Guru99 Insurance "Log In" page
	And I click the "Register" button-link
    And I enter the register Guru99 Insurances fields
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
    And I enter "<invalid_password>" in the Confirm Password field
	When Press the "Create" button of the screen
    Then error "PAssword and con.password does not match" is show

    Examples:
    | invalid_password      | 
    |                       |
    |  prueba               | 
    |  lucas@gmail.com      |


@last
Scenario: Reset Register Guru99 Insurance form
    Given I am in Guru99 Insurance "Log In" page
	And I click the "Register" button-link
	And I enter the register Guru99 Insurances fields
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
	When Press the "Reset" button of the screen
    Then I see the Register fields empty like this
    |Title: 	         | Mrs          |
	|First Name: 	     |              |
    |Surname: 	         |              |
    |Phone: 	         |              |
    |Year            	 | 1935         |
    |Month            	 | December     |
    |Date            	 | 21           |
    |Full or Provisional:| Full         |
    |Licence Period:     | 1            |	
    |Occupation:         | Academic     | 	
    |Street: 	         |              |
    |City: 	             |              |
    |County: 	         |              |
    |Post code:          |              | 
    |Email:              |              |
    |Password:           |              |
    |Confirm password:   |              |