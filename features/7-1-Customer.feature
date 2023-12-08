Feature: Agile Project Verify Credentials
   To customize the home page
   Mini statement: I want to test the customization options

Background:  
    Given I am in the agile project page    


@Customer
Scenario: Prees to button thay say "Customer"
    Given I am in the agile project page in to the customer page
    When I enter "Customer" into the menu
    Then I should see a welcome message


 