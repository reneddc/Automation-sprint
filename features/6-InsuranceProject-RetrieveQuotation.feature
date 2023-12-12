Feature: See the Retrieve Quotation of a logged user of Guru99 Insurance
    As a logged user of Guru99 Insurance
    I want to save a retrieve quotation with an identification number
    So I will get the information about the request quotation

Background: 
    Given I am on the sample homepage
    And I click the "Insurance Project" link of the navbar
    And I see the "Guru99 Insurance Log In" page
	And I enter a registered email and password 
	And Press the "Log in" button of the screen
    And I click the "Retrieve Quotation" link

Scenario Outline: Retrieve quotation in Guru99 Insurance
    Given I am in the Guru99 Insurance "Retrieve Quotation" section
    When I enter the identification number "<id_number>"in the field
    And Press the "Retrieve" button of the screen
    Then I should see the following Request Quotation Table
    |Insurance Name         |Value      |
    |Breakdowncover	        |           |
    |Windscreenrepair	    |No         |
    |user_id                |           |	
    |incidents	            |0          |
    |Registration           |           |	
    |Annual mileage         |           |	
    |Estimated value        |           |	
    |Parking Location       |           |	
    |Start of policy	    |2014.2.7   |
Examples:
    |id_number          |
    |33808              |

Scenario Outline: Retrieve quotation in Guru99 Insurance with invalid identification number
    Given I am in the Guru99 Insurance "Retrieve Quotation" section
    When I enter the identification number "<id_number>"in the field
    And Press the "Retrieve" button of the screen
    Then error "<Message>" is show
Examples:
    |id_number     |Message                                     |                                
    |              |Broker Insurance WebPage                    |
    |0             |Wrong Retrieve Quotation ID. Please Check...|
    |147956320     |Wrong Retrieve Quotation ID. Please Check...|