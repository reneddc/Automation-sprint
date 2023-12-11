Feature: Save a Request Quotation of a logged user of Guru99 Insurance
    As a logged user of Guru99 Insurance
    I want to save a request quotation
    So I will have an identification number

Background: 
    Given I am on the sample homepage
    And I click the "Insurance Project" link of the navbar
    And I see the "Guru99 Insurance Log In" page
	And I enter a registered email and password 
	And Press the "Log in" button of the screen
    And I click the "Request Quotation" link

Scenario: Save a request quotation in Guru99 Insurance
    Given I am in the Guru99 Insurance "Request Quotation" section
    When I enter the following information in the fields
    | Breakdowncover:      | European                  |
    | Windscreenrepair:    | YES                       |
    | Incidents:           | None                      |
    | Registration:        | ABC123                    |
    | Annual mileage:      | 12000                     |
    | Estimated value:     | 15000                     |
    | Parking Location:    | Public Place              |
    | Year:                | 2018                      |
    | Month:               | August                    |
    | Day:                 | 15                        |
    And Press the "Save Quotation" button of the screen
    Then I should see the identification number like "33798"

Scenario: Save a request quotation in Guru99 Insurance with empty fields
    Given I am in the Guru99 Insurance "Request Quotation" section
    And Press the "Save Quotation" button of the screen
    Then I should see the identification number like "33798"

Scenario: Reset the request quotation form of Guru99 Insurance
    Given I am in the Guru99 Insurance "Request Quotation" section
    When I enter the following information in the fields
    | Breakdowncover:      | European                  |
    | Windscreenrepair:    | YES                       |
    | Incidents:           | None                      |
    | Registration:        | ABC123                    |
    | Annual mileage:      | 12000                     |
    | Estimated value:     | 15000                     |
    | Parking Location:    | Public Place              |
    | Year:                | 2018                      |
    | Month:               | August                    |
    | Day:                 | 15                        |
    And Press the "Reset form" button of the screen
    Then I should see the fields like this
    | Breakdowncover:      | Roadside                   |
    | Windscreenrepair:    | NO                         |
    | Incidents:           |                            |
    | Registration:        |                            |
    | Annual mileage:      |                            |
    | Estimated value:     |                            |
    | Parking Location:    | Select                     |
    | Year:                | 2014                       |
    | Month:               | February                   |
    | Day:                 | 7                          |