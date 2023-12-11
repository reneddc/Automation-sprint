Feature: Tutorials of Guru99 Demo Page
    As a BDD student
    I want to see the diferents tutorials that Guru Demo have for me
    so I will learn about those


@homepage
Scenario Outline: Redirect to the "Testing" tutorial
	Given I am on the sample homepage
	When I click the "<tutorial>" tutorial
	Then the title page change to "<titlePage>"
    And the DemoGuru99 logo should change to Guru99 logo

Examples:
    | tutorial          | titlePage   | 
    |  Testing    		|  Software Testing Tutorial |
    |  Selenium   		|  Selenium Tutorial |	  
    |  Live Project    	|  Live Projects: Join Real Time Training for FREE |
	|  Java    			|  Java Tutorial for Beginners: Learn Core Java Programming |
