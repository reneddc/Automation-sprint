Feature: verify that I am on the home page

    In order to get the best car insurance coverage on Guru99 Insurance
    As a registered customer
    I want to navigate to the car insurance section and test the online shopping options

Scenario: verify that I am on the Broker Insurance Web Page
  Given I am on the insurance project pages h
  And I enter my email and password in the form s
  And I press the "Login" button s
  When I press the "Home" button h
  Then I should see the message Broker Insurance Web Page