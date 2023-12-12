Feature: Add Tariff Plan of section Telecom Project
   As a BDD student
   I want to add a tariff plan
   so I will introduce my customixed tariff plan to the demo page

Background: 
    Given I am on the sample homepage
    And I press the option "Telecom Project" of the navbar


Scenario: Add tariff plan with valid values
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan" link
    And I see the "Add Tariff Plan" title
    When I enter the Add Tariff Plan required fields as show below
        |Monthly Rental 	                    | 500   |
        |Free Local Minutes	                    | 200   |
        |Free International Minutes	            | 100   |
        |Free SMS Pack                          | 500   |	
        |Local Per Minutes Charges 	            | 2     |
        |Inter. Per Minutes Charges	            | 20    |
        |SMS Per Charges 	                    | 4     |
    And Press the "submit" button of the screen
	Then I should see the message "Congratulation you add Tariff Plan"


Scenario: Add tariff plan with empty fields
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan" link
    And I see the "Add Tariff Plan" title
    When Press the "submit" button of the screen
	Then I should see the error alert "please fill all fields Correct Value"


Scenario: Add tariff plan only clicking in the fields, but not typing
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan" link
    And I see the "Add Tariff Plan" title
    When I enter the Add Tariff Plan required fields as show below
        |Monthly Rental 	                    |    |
        |Free Local Minutes	                    |    |
        |Free International Minutes	            |    |
        |Free SMS Pack                          |    |	
        |Local Per Minutes Charges 	            |    |
        |Inter. Per Minutes Charges	            |    |
        |SMS Per Charges 	                    |    |
	Then I should see the message "Number must not be blank" in every field


Scenario: Add tariff plan with invalid values
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan" link
    And I see the "Add Tariff Plan" title
    When I enter the Add Tariff Plan required fields as show below
        |Monthly Rental 	                    |  aa  |
        |Free Local Minutes	                    |  aa  |
        |Free International Minutes	            |  aa  |
        |Free SMS Pack                          |  aa  |	
        |Local Per Minutes Charges 	            |  aa  |
        |Inter. Per Minutes Charges	            |  aa  |
        |SMS Per Charges 	                    |  aa  |
	Then I should see the message "Characters are not allowed" in every field

@last
Scenario: Reset the Add tariff plan form
	Given I am on the Telecom Project section
    And I press the "Add Tariff Plan" link
    And I see the "Add Tariff Plan" title
    When I enter the Add Tariff Plan required fields as show below
        |Monthly Rental 	                    | 500   |
        |Free Local Minutes	                    | 200   |
        |Free International Minutes	            | 100   |
        |Free SMS Pack                          | 500   |	
        |Local Per Minutes Charges 	            | 2     |
        |Inter. Per Minutes Charges	            | 20    |
        |SMS Per Charges 	                    | 4     |
	And Press the "Reset" button of the screen
	Then I should see all the fields empty like:
        |Monthly Rental 	                    |    |
        |Free Local Minutes	                    |    |
        |Free International Minutes	            |    |
        |Free SMS Pack                          |    |	
        |Local Per Minutes Charges 	            |    |
        |Inter. Per Minutes Charges	            |    |
        |SMS Per Charges 	                    |    |