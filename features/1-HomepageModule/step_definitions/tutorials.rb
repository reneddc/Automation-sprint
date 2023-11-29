# #Given I am on the sample homepage
# Given(/^I am on the sample homepage$/) do
#   visit 'http://demo.guru99.com/'
# end

# #When I enter blank details for Register
# When(/^I enter blank details for Register$/) do
# 	fill_in 'emailid', :with => ""
# end

# #And Press the "Submit" button
# When('Press the {string} button') do |buttonName|
#   click_button(buttonName) 
# end

# #Then error "Email ID must not be blank" is show
# Then(/^error "([^"]*)" is show$/) do |errorMessage|
#   page.has_content?(errorMessage)
#   sleep 2
# end

# #When I enter "carlos@test.com" for Register
# When(/^I enter "([^"]*)" for Register$/) do |userName|
#   fill_in 'emailid', :with => userName
# end

# #Then I should see the following table:
# Then(/^I should see the following table:$/) do |table|
#   loginMessage = 'Access details to demo site'
#   find(:xpath, '/html/body/table/tbody/tr[1]/td/h2', :text => loginMessage)
#   data = table.rows_hash
#   counter = 4
#   path = find(:xpath, '/html/body/table')
#   xpath_base_name = './tbody/tr[%i]/td[1]'
#   #xpath_base_name1 = './tbody/tr[%i]/td[2]'
#   data.each_pair do |key, value|
#      expect(path.find(:xpath, xpath_base_name % [counter])).to have_content(key)
#      counter += 1 
#   end
# end


# Then(/^I should see mngr(\d+) id$/) do |arg1|
#   purchasedLabel = find(:xpath, '/html/body/table/tbody/tr[4]/td[2]', :text => /\Amngr\d\d\d\d\d\d\z/)
# end


#Background
# Given I am on the sample homepage
Given(/^I am on the sample homepage$/) do
  visit 'http://demo.guru99.com/'
end

#When I click the "Testing" tutorial
When('I click the {string} tutorial') do |tutorial|
  case tutorial
    when "Testing"
        xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[1]/a[1]/img'
    when "Selenium"
      xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[2]/a[1]/img'
    when "Live Project"
      xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[3]/a[1]/img'
    when "Java"
      xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[4]/a[1]/img'
  end
  find(:xpath, xpath_base).click
end

#Then the title page change to "Software Testing Tutorial"
Then('the title page change to {string}') do |title|
  xpath_base = '/html/body/div[1]/div/div/div/main/div/article/div/header/h1'
  header = find(:xpath, xpath_base)
  expect(header).to have_text(title)
end

#And the page logo change to Guru99
Then('the page logo change to Guru99') do
  xpath_base = '/html/body/div[1]/header/div[2]/div/div/div/div/div/div/div/div[1]/div/div/a/img'
  logo = find(:xpath, xpath_base)[:alt]
  expect(logo).to have_content("Guru99")
end