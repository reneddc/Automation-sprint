Feature: Generate a card number
    As a toy purchasing customer,
    To buy a toy elephant with a recoignized card number,
    I want to crete a card number

@generateCardNumber
Scenario: Generate a card number
    Given I see the "Payment Gateway Buy Toy" page
    When I will change to the Generate Card Number page
    Then I see the "Generate Card Number" page
    And I see the credentials of the credit card created like this
    |CardNumber             |month      |year       |cvv   |
    |4825088890201230       |11         |2024       |123   |
    |6825088790206232       |10         |2025       |321   |

Scenario: Check Credit Balance
  Given I am on the payment gateway project sections
  And I press the "Check Credit Card Limit" button
  When I enter the required field of card
  | Enter Credit Card Number:      | 4825088890201232  |
  Then I should be able to see my information about the money spent and what I spent it on
   


 

