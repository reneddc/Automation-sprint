# features/step_definitions/(8)Bank Proyect/BankProyect.rb

Given('I am on the "Bank Project" page') do
  visit 'https://demo.guru99.com/V1/index.php'
end

When("the user enters valid UserId and Password") do
  # Code to enter valid UserId and Password
  fill_in 'uid', with: 'mngr541807'
  fill_in 'password', with: 'vezasym'
end

And("clicks the login button") do
  # Code to click the login button
  click_button 'LOGIN'
end

Then("the user should be logged in successfully") do
  # Code to verify successful login
  expect(page).to have_content 'Welcome To Manager\'s Page'
end


#Scenario: Log in with invalid credentials

When("I enter {string} into the username field") do |username|
  fill_in 'uid', with: username
end

And("I enter {string} into the password field") do |password|
  fill_in 'password', with: password
end

And("I click the login button") do
  click_button 'LOGIN'
end

Then("I should see an alert with the message {string}") do |expected_message|
  alert = page.driver.browser.switch_to.alert
  actual_message = alert.text

  # Ajustar la comparación para ser más flexible
  expect(actual_message).to include(expected_message)

  alert.accept
end
