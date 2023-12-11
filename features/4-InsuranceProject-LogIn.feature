Feature: LogIn New User in Guru99 Insurance
    As a user of Guru99 Insurance
    I want to log in with my emeail and password
    So I will access to the main page of Guru99 Insurance and its differents sections

Background: 
    Given I am on the sample homepage
    And I click the "Insurance Project" link of the navbar
    And I see the "Guru99 Insurance Log In" page
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
    |Email:              | pepitope5000@gmail.com  |
    |Password:           | prueba123             |
    |Confirm password:   | prueba123             |
	When Press the "Create" button of the screen

Scenario: LogIn in Guru99 Insurance with a registered account
    Given I see the "Guru99 Insurance Log In" page
	And I enter a registered email and password 
	When Press the "Log in" button of the screen
    Then I see the "Guru99 Insurance Home" page

Scenario Outline: LogIn in Guru99 Insurance with invalid credentials
    Given I see the "Guru99 Insurance Log In" page
	And I enter the email "<email>" and the password "<password>"
	When Press the "Log in" button of the screen
    Then error "Enter your Email address and password correct" is show

Examples:
    | email                         | password      | 
    |  pepitope5000@gmail.com       |               |
    |  pepitope5000@gmail.com       |  123          |    	  
    |  pepitope5000@gmailcom        |  prueba123    |

@last
Scenario: LogOut of Guru99 Insurance
    Given I see the "Guru99 Insurance Log In" page
    And I enter a registered email and password 
	And Press the "Log in" button of the screen
    And I see the Guru99 Insurance "Homepage" page
    When Press the "Log out" button of the screen
    Then I see the Guru99 Insurance "Log In" page