Feature: Agile Project Verify Credentials
   To customize the home page
   Verify all the options 

Background:  
    Given I am in the agile project page
    When I enter "1303" into the UserId field for Register
    And I enter "Guru99" into the Password field for Register
    And I click the "LOGIN" button
    And I am on the Mini Statement Input page


Scenario: Press to the option 1 Mini Statement 
	When I select the first option from the list
    And I Press "Submit" button
    Then I should see an error message from Google

@submit_butom    
Scenario: Press to the option  2 Mini Statement     
	When I select the two option from the list

@submit_butom    
Scenario: Press to the option 3 Mini Statement      
    When I select the third option from the list

@submit_butom    
Scenario: Press to the option 4 Mini Statement      
    When I select the four option from the list
