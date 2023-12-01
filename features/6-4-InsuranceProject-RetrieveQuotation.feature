Feature: Recover Insurance Quote from Guru99

  As a registered customer,
  To retrieve my insurance quote,
  I want to verify if my quote was submitted with the correct information

Scenario: Enter your identification number
  Given I am on the insurance project pages
  And I enter my email and password in the forms
  And I pre the "Login" button
  And I press the "Retrieve Quote" button n
  When I enter the identification number
  |Identification Number: | 33418 |
  And I press the "Retrieve" button s
  Then I should be able to see my retrieved quotation
 
