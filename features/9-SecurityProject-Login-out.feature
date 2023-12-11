Feature: Login in Guru99 Security Bank Project
    As a demo.Guru99 user 
    I want to log in on the Guru99 Security Bank project
    So I will interact with the differents activities of this section

Background: 
    Given I am on the sample homepage
    And I click the "Security Project" link of the navbar
    

Scenario: Login in the Guru99 Security Bank project with values below  
    Given I see the "Guru99 Security Bank project Log In" page
	And I enter the userId "1303" and password "Guru99"
	When Press the "LOGIN" button of the screen
    Then I see the "Guru99 Security Bank project Home" page

Scenario Outline: Login in the Guru99 Security Bank project with invalid values
    Given I see the "Guru99 Security Bank project Log In" page
	And I enter the userId "<userId>" and password "<password>"
	When Press the "LOGIN" button of the screen
    Then I should see the alert "User or Password is not valid"
    Examples:
        | userId   |password |
        | 	       |         |
        |1303 	   |         |
        |1303	   | Guru    | 

@last
@createAndSaveUser
Scenario: Login in the Guru99 Security Bank project with an account created in Guru99 Homepage
    Given I see the "Guru99 Security Bank project Log In" page
	And I enter the userId and password created in Guru99 Homepage
	When Press the "LOGIN" button of the screen
    Then I should see the alert "User or Password is not valid"

Scenario: Logout of the Guru99 Security Bank project
    Given I see the "Guru99 Security Bank project Log In" page
	And I enter the userId "1303" and password "Guru99"
	And Press the "LOGIN" button of the screen
    And I see the "Guru99 Security Bank project Home" page
    When I click the "Log out" link
    Then I should see the alert "You Have Succesfully Logged Out!!"