#Given I am on the sample homepage
Given(/^I am in the agile project page$/) do
  visit 'https://demo.guru99.com/Agile_Project/Agi_V1/'
end
#I enter "1303" into the UserId field for Register

When('I enter {string} into the UserId field for Register') do |username|
  fill_in('uid', with: username)
end

#I enter "Guru99" into the Password field
And('I enter {string} into the Password field for Register') do |password|
  fill_in('password', with: password)
end

And('I click the {string} button') do |button_text|
  # Assuming you have a button with the specified text on the page
  click_button(button_text)
end
