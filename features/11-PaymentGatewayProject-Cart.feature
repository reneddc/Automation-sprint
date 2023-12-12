Feature: Buy a Mother Elephant With Babies Soft Toy
    As a toy purchasing customer,
    To buy a toy elephant,
    I want to verify if my payment was made successfully

Background:
    Given I am on the sample homepage
    And I click the "Payment Gateway Project" link of the navbar

@saveOrderId
Scenario Outline: Mother Elephant With Babies Soft Toy with a random credit card
    Given I see the "Payment Gateway Buy Toy" page
    And I fill the "Quantity" field with "<quantity>"
    And Press the "Buy Now" button of the screen
    And I see the pay ammount $"<ammount>"
    When I fill the "Card Number" field with "<CardNumber>"
    And I fill the "Expiration Month" field with "<month>"
    And I fill the "Expiration Year" field with "<year>"
    And I fill the "CVV Code" field with "<cvv>"
    And Press the "Pay $<ammount>" button of the screen
    Then I see the order ID "<orderId>"
    Examples:
    | quantity      | ammount   |CardNumber             |month      |year       |cvv   |
    | 1             | 20        |4825088890201230       |11         |2024       |123   |
    | 5             | 100       |6825088790206232       |10         |2025       |321   |

 
@createNumberCard
Scenario Outline: Mother Elephant With Babies Soft Toy with a created credit card
    Given I see the "Payment Gateway Buy Toy" page
    And I fill the "Quantity" field with "<quantity>"
    And Press the "Buy Now" button of the screen
    And I see the pay ammount $"<ammount>"
    And I fill the fields with the number card created credentials
    When Press the "Pay $<ammount>" button of the screen
    Then I see the order ID "<orderId>"
    Examples:
    | quantity      | ammount   |
    | 1             | 20        |
    | 5             | 100       |
