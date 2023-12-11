Feature: Login in Guru99 GPTL Bank Project
    As a demo.Guru99 user 
    I want to log in in the Guru99 GPTL Bank project
    So I will intercat with the differents activities of this section

Background: 
    Given I am on the sample homepage
    And I click the "Bank Project" link of the navbar

@createAndSaveUser
Scenario: Login in the Guru99 GPTL Bank Project with an account created in Guru99 Homepage 
    Given I see the "Guru99 GPTL Project Log In" page
	And I enter the userId and password created in Guru99 Homepage
	When Press the "LOGIN" button of the screen
    Then I see the "GPTL Bank Project Home" page


Scenario Outline: Login in the GPTL Bank Project with invalid values
    Given I see the "Guru99 GPTL Project Log In" page
	And I enter the userId "<userId>" and password "<password>"
	When Press the "LOGIN" button of the screen
    Then I should see the alert "User is not valid"
    Examples:
        | userId        |password |
        | 	            |         |
        |mngr539425 	    |         |
        |mngr539425	    | ytypEr    |
        | 	            | ytypErU  |
        |mngr53942 	    | ytypErU  |  

Scenario: Login in the GPTL Bank Project with values of Agile Project 
    Given I see the "Guru99 GPTL Project Log In" page
	And I enter the userId "1303" and password "Guru99"
	When Press the "LOGIN" button of the screen
    Then error "Not Found" is show

@last
@createAndSaveUser
Scenario: Logout of the GPTL Bank Project
    Given I see the "Guru99 GPTL Project Log In" page
	And I enter the userId and password created in Guru99 Homepage
	And Press the "LOGIN" button of the screen
    And I see the "GPTL Bank Project Home" page
    When I click the "Log out" link
    Then I should see the alert "You Have Succesfully Logged Out!!"