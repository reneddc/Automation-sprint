Feature: NavBar of Guru Demo Page
    As a BDD student
    I want to redirect to the diferents projects of the navbar
    so I will know and see the main page of the project I selected


Scenario: Show the differents Selenium's projects of the navbar
	Given I am on the sample homepage
	When I click the "Selenium" option of the navbar
	Then I should see the following projects in the menu
    |   project        | 
    |   Flash Movie Demo        | 
    |   Radio & Checkbox Demo   |
    |   Table Demo              |
    |   Accessing Link          |
    |   Ajax Demo               |
    |   Yahoo                   |
    |   Tooltip                 |
    |   File Upload             |


Scenario: Redirect to the Insurance Project
	Given I am on the sample homepage
	When I click the "Insurance Project" option of the navbar
	Then I should see a login form
    And a "Register" button
    And a "Log in" button