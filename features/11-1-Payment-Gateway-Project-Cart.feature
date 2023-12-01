Feature: Buy a Mother Elephant With Babies Soft Toy

As a toy purchasing customer,
    To buy a toy elephant,
    I want to verify if my payment was made successfully

Scenario: choose the quantity of elephant toys to buy
  Given I am on the payment gateway project
  When I choose the quantity of elephants
  | Quantity: | 6      |
  And I click the "Buy Now" button b
  Then I should be able to see the payment process
 
