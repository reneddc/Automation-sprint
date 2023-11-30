Feature: Guru99 Insurance Quote Request

  As a logged-in customer,
  In order to obtain insurance quotes tailored to my specific needs and circumstances,
  I want to efficiently and accurately fill out the Quote Request form.

Scenario: Fill out Quote Request Form
    Given I am on the Insurance Project Page
    And I enter my email and password in the form
    And I pres the "Login" button
    And I pres the "Request Quotation" button
    When I enter the required fields with the following information
    | Breakdowncover:      | European                  |
    | Windscreenrepair:    | YES                       |
    | Incidents:           | None                      |
    | Registration:        | ABC123                    |
    | Annual mileage:      | 12000                     |
    | Estimated value:     | 15000                     |
    | Parking Location:    | Street                    |
    | Year:                | 2018                      |
    | Month:               | August                    |
    | Day:                 | 15                        |
    And I pres the "Save Quotation" button
    Then I should see a message confirming that it was saved

