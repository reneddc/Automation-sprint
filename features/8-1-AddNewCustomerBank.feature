Feature: Create a new customer account

Background: 
    Given the administrator is on the Manager's home page

Scenario: Create a new customer account
    When the administrator selects the option to create a new account
    And fills in the necessary details for the new account
    And confirms the creation of the account
    Then the customer account should be created successfully