Feature: From DemoGuru99 page redirect to Guru99 page
   As a BDD student
   I want to redirect to the Guru99 page
   so I will place navigate in this new page


Scenario: Redirect to Guru99 page     
	Given I am on the sample homepage
	When I press the Demo Guru99 logo
	Then the DemoGuru99 logo should change to Guru99 logo
   And I should see the followings navbar options 
   |   navigator          | 
   |   Home          | 
   |   Testing       | 
   |   SAP           |
   |   Web           |
   |   Must Learn    |
   |   Big Data      |
   |   Live Project  |
   |   AI            |
    