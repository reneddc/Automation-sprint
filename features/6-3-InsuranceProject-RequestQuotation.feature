Feature: Guru99 Insurance Quote Request

  As a logged-in customer,
  In order to obtain insurance quotes tailored to my specific needs and circumstances,
  I want to efficiently and accurately fill out the Quote Request form.

Background:
  Given I am on the Insurance Project Page

Scenario: Fill out Quote Request Form, Save, Reset, and Calculate Premium
    And I enter my email and password in the form
    And I push the "Login" button
    And I click the "Request Quotation" button
    When I enter the required fields with the following information
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
    And I now click the "<buttons>" button
    Then I should "<result>" 

Examples:
  |buttons             |result                                      |
  | Save Quotation     | see a message confirming that it was saved |
  | Reset form         | reset all fields                           |
  | Calculate Premium  | the premium price                          |
