Feature: Guru99 Demo Page
As a BDD student
I want to test Guru99 registration page
so I learn how to use Capybara


Background:
  Given I am on the sample homepage
    And I am in the agile project page
    

@login
Scenario: Login in agile project
    Given I am in the agile project page
    When I enter "1303" into the UserId field for Register
    And I enter "Guru99" into the Password field for Register
    And I click the "LOGIN" button
    
Scenario: Verify the reset button resets the form
  Given I am in the agile project page
  When I enter "1303" into the UserId field for Register
  And I click the "RESET" button
  Then the field with ID "1303" should be empty

Scenario: Verify the field is empty
  Given I am in the agile project page
  When I click the button without entering any data
  Then I should see a message indicating the field is empty