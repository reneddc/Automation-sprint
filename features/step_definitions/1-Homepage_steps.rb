#Given I am on the sample homepage
Given("I am on the sample homepage") do
    @homepage.visitHomepage
end

#When I enter "carlos@test.com" for Register
When(/^I enter "([^"]*)" for Register$/) do |emailAddress|
    @homepage.enterEmailId(emailAddress)
end

#And Press the "Submit" button
When('Press the {string} button of the screen') do |buttonName|
    click_button(buttonName) 
end

#Then I should see <username> id
Then(/^I should see mngr(\d+) id$/) do |arg1|
    matchResult = @homepage.showUserId
    expect(matchResult).to be_truthy
end

#Then error "Email ID must not be blank" is show
Then(/^error "([^"]*)" is show$/) do |errorMessage|
    page.has_content?(errorMessage)
end

#When I click the "<tutorial>" tutorial
When(/^I click the "([^"]*)" tutorial$/) do |tutorial|
    @homepage.clickTutorial(tutorial)
end

#Then the title page change to "Software Testing Tutorial"
Then(/^the title page change to "([^"]*)"$/) do |titlePage|
    header = @homepage.findHeader
    expect(header).to have_text(titlePage)
end

#Then the DemoGuru99 logo should change to Guru99 logo
Then('the DemoGuru99 logo should change to Guru99 logo') do
    logo = @homepage.findLogoName
    expect(logo).to have_content("Guru99")
end