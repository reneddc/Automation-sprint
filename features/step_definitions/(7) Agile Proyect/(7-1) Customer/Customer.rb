#Given I am on the sample homepage
Given(/^I am in the agile project page in to the customer page$/) do
  visit 'https://demo.guru99.com/Agile_Project/Agi_V1/customer/Customerhomepage.php'
end


When(/^I enter "Customer" into the menu$/) do
  xpath_base = '/html/body/div[3]/div/ul/li[1]'
  find(:xpath, xpath_base).click
end


And('I should see a welcome message') do
  welcome_message_xpath = '/html/body/table/tbody/tr/td/table/tbody/tr[2]/td/marquee'
  welcome_message_element = find(:xpath, welcome_message_xpath)

  # Verifica que el contenido del elemento contenga la cadena 'Welcome'
  expect(welcome_message_element.text).to include('Welcome')
end
