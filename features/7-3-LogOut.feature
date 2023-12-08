
Feature: Agile Project Verify Log Out
  

Background:  
    Given I am in the agile project page
    When I enter "1303" into the UserId field for Register
    And I enter "Guru99" into the Password field for Register
    And I click the "LOGIN" button

Scenario: Check Log out 
    When I click the "Log out" link
    Then I should see an message from Google
