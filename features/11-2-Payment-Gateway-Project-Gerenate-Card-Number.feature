Feature: Generate a new card number

As a customer who wants to generate a card with money,
    To buy a toy elephant,
    I want to see my new card and all the information about it

Scenario: A new credit card is generated
  Given I am on the payment gateway project section
  And I press the "Generate Card Number" button g
  Then I should be able to see my credit card information
 


