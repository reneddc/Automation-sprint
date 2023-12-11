# Given(/^I am on the Insurance Project$/) do
#     page.driver.browser.manage.window.maximize
#     visit('https://demo.guru99.com/insurance/v1/index.php')
#   end
  
# When(/^I click the "Register" button-link$/) do
#     xpath_base = '/html/body/div[3]/a'
#     find(:xpath, xpath_base).click
#   end
  
# When(/^I enter the required fields$/) do |table|
#     data = table.rows_hash
#     data.each_pair do |key, value|
#       case key
#     when "Title:"
#       select(value, :from => 'title')
#     when "First Name:"
#         fill_in 'firstname', :with => value
#         @name = value
#     when "Surname:"
#       fill_in 'lastname', :with => value
#       @lastName = value
#     when "Phone:"
#       fill_in 'phone', :with => value
#     when "Year:"
#       select(value, :from => 'year')
#     when "Month:"
#       select(value, :from => 'month')
#     when "Date:"
#       select(value, :from => 'date')
#     when "Full or Provisional:"
#       choose(value)
#     when "Licence Period:"
#       select(value, :from => 'licenceperiod')
#     when "Occupation:"
#       select(value, :from => 'occupation')
#     when "Street:"
#       fill_in 'street', :with => value
#     when "City:"
#       fill_in 'city', :with => value
#     when "County:"
#       fill_in 'county', :with => value
#     when "Post code:"
#       fill_in 'post_code', :with => value
#     when "Email:"
#       fill_in 'email', :with => value
#     when "Password:"
#       fill_in 'password', :with => value
#     when "Confirm password:"
#       fill_in 'c_password', :with => value
#       end
#     end
#   end
  
#   When(/^send my registration form of insurance$/) do
#     xpath_base = '/html/body/div[3]/form/div[5]/input[2]'
#     find(:xpath, xpath_base).click
#   end


#   When(/^I enter my email and password$/) do
#     fill_in 'email', :with => ENV['Email']
#     fill_in 'password', :with => ENV['Password']
#   end

#   Then(/^I should see the Guru99 Insurence Project screen$/) do
#     broken_insurance_webpage = "Broker Insurance WebPage"
#     expect(page).to have_content(broken_insurance_webpage)

#   end
  