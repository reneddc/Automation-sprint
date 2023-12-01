Feature: Buy a Mother Elephant With Babies Soft Toy

As a toy purchasing customer,
    To buy a toy elephant,
    I want to verify if my payment was made successfully
Background:
    Given I am on the payment gateway project
    When I choose the quantity of elephants
    | Quantity: | 6      |
    And I click the "Buy Now" button b

Scenario: choose the quantity of elephant toys to buy
  Then I should be able to see the payment process and the price
 
 Scenario: fill out the payment detail fields
  When I enter the required fields payment
  | Card Number:       | 4825088890201232  |
  | Expiration Month:  | 11                |
  | Expiration Year:   | 2025              |
  | CVV Code:          | 677               |
  And I press the "Pay" button pb
  Then I should be able to see the message payment successfull and my order id
 

