Feature: Check Credit Balance

To check the credit balance.
     as a purchasing customer,
      I want to see information about the money spent and what I spent it on

Scenario: Check Credit Balance
  Given I am on the payment gateway project sections
  And I press the "Check Credit Card Limit" button cc
  When I enter the required field of card
  | Enter Credit Card Number:      | 4825088890201232  |
  Then I should be able to see my information about the money spent and what I spent it on
 

