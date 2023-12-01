Feature: Tutorials of Guru Demo Page
    As a BDD student
    I want to see the diferents tutorials that Guru Demo have for me
    so I will learn how to go to this topics



Scenario: Redirect to the "Testing" tutorial
	Given I am on the sample homepage
	When I click the "Testing" tutorial
	Then the title page change to "Software Testing Tutorial"
    And the DemoGuru99 logo should change to Guru99 logo

Scenario: Redirect to the "Selenium" tutorial
	Given I am on the sample homepage
	When I click the "Selenium" tutorial
	Then the title page change to "Selenium Tutorial"
    And the DemoGuru99 logo should change to Guru99 logo

Scenario: Redirect to the "Live Project" tutorial
	Given I am on the sample homepage
	When I click the "Live Project" tutorial
	Then the title page change to "Live Projects: Join Real Time Training for FREE"
    And the DemoGuru99 logo should change to Guru99 logo

Scenario: Redirect to the "Java" tutorial
	Given I am on the sample homepage
	When I click the "Java" tutorial
	Then the title page change to "Java Tutorial for Beginners: Learn Core Java Programming"
    And the DemoGuru99 logo should change to Guru99 logo