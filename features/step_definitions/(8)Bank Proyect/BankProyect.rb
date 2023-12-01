# features/step_definitions/(8)Bank Proyect/BankProyect.rb

Given('I am on the Bank Project login page') do
  visit 'https://demo.guru99.com/V1/index.php'
end

When('I click on the link with text "here"') do
  click_link('here')
end

And('I press enter {string} into the Email ID field') do |email|
  fill_in('emailid', with: email)
  find('input[name="btnLogin"]').send_keys(:enter)
end

And('I click the "Submit" button on Bank Project')do
  xpath_submit = '/html/body/form/table/tbody/tr[6]/td[2]/input'
  find(:xpath, xpath_submit).click
end

Then('I come back to the Bank Project') do
  visit 'https://demo.guru99.com/V1/index.php'
end

Then('I should see the login credentials table on the credentials page:') do |table|
  # Verify the presence of the login credentials table on the page
  expect(page).to have_table('login_credentials', rows: table.raw)
end

# Scenario

Given('I am on the banking application login page') do
  visit 'https://demo.guru99.com/V1/index.php'
end

When('I enter {string} into the username field') do |username|
  fill_in('uid', with: username)
end

And('I enter {string} into the password field') do |password|
  fill_in('password', with: password)
end

And('I click the login button') do
  click_button('LOGIN')
end

Then('I should see an alert with the message {string}') do |alert_message|
  # Add code to check for the alert and its content
  page.driver.browser.switch_to.alert.text == alert_message
end

And('I should remain on the banking application login page') do
  # Add code to check if you are still on the login page
  expect(page).to have_current_path('https://demo.guru99.com/V1/index.php', url: true)
end


##
## frozen_string_literal: true

Given('I am on the Bank Project login page') do
  visit(@bank_project_url)
end

When('I click on the link with text {string}') do |link_text|
  click_link(link_text)
end

And('I enter {string} into the Email ID field') do |email_id|
  fill_in('emailid', with: email_id)
end

And('I click the "SUBMIT" button on Bank Project') do
  click_button('btnLogin')
end

And('I should be on the redirected page') do
  expect(page).to have_current_path(@credentials_url, wait: 10)
end

Then('I should see the login credentials table on the credentials page:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  credentials = table.hashes.first
  expect(page).to have_selector('table', wait: 10)
  within('table') do
    expect(page).to have_content("User ID : #{credentials['UserID']}", wait: 10)
    expect(page).to have_content("Password : #{credentials['Password']}", wait: 10)
  end
end

Then('I should visit the credentials page') do
  visit(@credentials_url)
  expect(page).to have_selector('body', wait: 10)
end
