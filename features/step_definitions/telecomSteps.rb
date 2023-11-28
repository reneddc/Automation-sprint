#Given I am on the Guru99 homepage
Given(/^I am on the Guru99 homepage$/) do
    visit 'http://demo.guru99.com'
end

#When I click the "Telecom Project" link
When(/^I click the Telecom Project link$/) do
    xpath_base = '/html/body/div[1]/div[2]/nav/div/div/ul/li[8]/a'
    find(:xpath, xpath_base).click
end

#Then I should see the Guru99 Telecom Project screen
Then(/^I should see the Guru99 Telecom Project screen$/) do
    add_customer_title = "Add Customer"
    add_tariff_plan_to_customer_title = "Add Tariff Plan to Customer"
    add_tariff_plan_title = "Add Tariff Plan"
    pay_billing_title = "Pay Billing"
    expect(page).to have_content(add_customer_title)
    expect(page).to have_content(add_tariff_plan_to_customer_title)
    expect(page).to have_content(add_tariff_plan_title)
    expect(page).to have_content(pay_billing_title)
end

#Given I am on the Telecom Project homepage
Given(/^I am on the Telecom Project homepage$/) do
    visit 'https://demo.guru99.com/telecom/index.html'
end

#And I click the Add Customer link
When('I click the Add Customer Link from {string}') do |string|
    if string == "homepage"
        xpath_base = '/html/body/section/div/div[1]/div[1]/h3/a'
    else
        xpath_base = '/html/body/nav/ul/li[2]/a'
    end
    find(:xpath, xpath_base).click
end

#And the done radio button is disabled
Then('the done radio button is disabled') do
    done_radio_button = find(:xpath, '/html/body/section/div/form/div/div[1]/label')
    expect(done_radio_button).to have_content("Done")
end

#And the "pending" radio button is disabled
Then('the pending radio button is disabled') do
    pending_radio_button = find(:xpath, '/html/body/section/div/form/div/div[2]/label')
    expect(pending_radio_button).to have_content("Pending")
end

#And the "*" fill is empty
When('the {string} fill is empty') do |string|
    fill_in string, :with => ""
end

#When I click the Submit button
When('I click the Submit button') do
    xpath_base = '/html/body/section/div/form/div/div[9]/ul/li[1]/input'
    find(:xpath, xpath_base).click
end

#Then the error "please fill all fields" is show
Then(/^the error "([^"]*)" is show$/) do |errorMessage|
    page.driver.browser.switch_to.alert
    # Verificar el texto de la alerta
    expect(page.driver.browser.switch_to.alert.text).to eq(errorMessage)
    # Aceptar la alerta (puedes usar dismiss_alert para cancelarla)
    page.driver.browser.switch_to.alert.accept
end

When('I click the menu button') do
    xpath_base = '/html/body/span/nav/a[1]'
    find(:xpath, xpath_base).click
end


When(/^I enter the required fields as show below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when "First Name:"
          fill_in 'fname', :with => value
      when "Last Name:"
          fill_in 'lname', :with => value
      when "Email:"
          fill_in 'email', :with => value
      when "Address:"
          fill_in 'message', :with => value
      when "Phone:"
          fill_in 'telephoneno', :with => value
      end
    end
  end