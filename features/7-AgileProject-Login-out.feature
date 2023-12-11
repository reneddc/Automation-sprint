Feature: Login in Guru99 Agile Project
    As a demo.Guru99 user 
    I want to log in in the Guru99 Agile project
    So I will intercat with the differents activities of this section

Background: 
    Given I am on the sample homepage
    And I click the "Agile Project" link of the navbar
    

Scenario: Login in the Guru99 Agile Project with values below  
    Given I see the "Agile Project Log In" page
	And I enter the userId "1303" and password "Guru99"
	When Press the "LOGIN" button of the screen
    Then I see the "Agile Project Home" page

Scenario Outline: Login in the Guru99 Agile Project with invalid values
    Given I see the "Agile Project Log In" page
	And I enter the userId "<userId>" and password "<password>"
	When Press the "LOGIN" button of the screen
    Then I should see the alert "User or Password is not valid"
    Examples:
        | userId   |password |
        | 	       |         |
        |1303 	   |         |
        |1303	   | Guru    |
        | 	       | Guru99  |
        |78925 	   | Guru99  |  

@last
@createAndSaveUser
Scenario: Login in the Guru99 Agile Project with an account created in Guru99 Homepage
    Given I see the "Agile Project Log In" page
	And I enter the userId and password created in Guru99 Homepage
	When Press the "LOGIN" button of the screen
    Then error "Not Found" is show

Scenario: Logout of the Guru99 Agile Project
    Given I see the "Agile Project Log In" page
	And I enter the userId "1303" and password "Guru99"
	And Press the "LOGIN" button of the screen
    And I see the "Agile Project Home" page
    When I click the "Log out" link
    Then I should see the alert "You Have Succesfully Logged Out!!"