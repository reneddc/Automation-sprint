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
When(/^I click the Add Customer link$/) do
    xpath_base = '/html/body/section/div/div[1]/div[1]/h3/a'
    find(:xpath, xpath_base).click
end

#And the "done" radio button is disabled
#And the "pending" radio button is disabled
Then(/^the "([^"]*)" radio button is disabled$/) do |arg1|
    done_radio_button = find(:xpath, '/html/body/section/div/form/div/div[1]/input')
    pending_radio_button = find(:xpath, '/html/body/section/div/form/div/div[2]/input')
    expect(done_radio_button).to be_disabled
    expect(pending_radio_button).to be_disabled
end
