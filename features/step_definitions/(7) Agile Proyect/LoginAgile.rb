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

Then('the field with ID "1303" should be empty') do
  field = find(:xpath, '/html/body/form/table/tbody/tr[1]/td[2]/input', wait: 10)
  expect(field.value).to be_empty
end


When('I click the button without entering any data') do
  # Clicking the button without entering any data
  click_button('LOGIN')  # Replace 'LOGIN' with the actual text of the button
end

Then('I should see a message indicating the field is empty') do
  # Espera a que aparezca la alerta
  page.driver.browser.switch_to.alert

  # Acepta la alerta y maneja el mensaje específico
  alert = page.driver.browser.switch_to.alert
  alert_text = alert.text
  expect(alert_text).to eq('User or Password is not valid')
  alert.accept
end
