#And I press the option "Telecom Project" of the navbar
When('I press the option {string} of the navbar') do |option|
    click_link(option)
end


#Given I am on the Telecom Project section
Given('I am on the Telecom Project section') do
    xpath_base = '/html/body/section'
    section = find(:xpath, xpath_base)
    add_customer_title = "Add Customer"
    add_tariff_plan_to_customer_title = "Add Tariff Plan to Customer"
    add_tariff_plan_title = "Add Tariff Plan"
    pay_billing_title = "Pay Billing"
    expect(section).to have_content(add_customer_title)
    expect(section).to have_content(add_tariff_plan_to_customer_title)
    expect(section).to have_content(add_tariff_plan_title)
    expect(section).to have_content(pay_billing_title)
end


#And I press the Add Customer link
When('I press the {string} link') do |link|
    click_link(link)
end


#And I see the "Background check" form
Then('I see the {string} form') do |label|
    xpath_base = '/html/body/section/div/form'
    form = find(:xpath, xpath_base)
    form.has_content?(label)
end


#Then I should see the error alert "please fill all fields"
Then('I should see the error alert {string}') do |errorAlert|
    sleep 3
    alert = page.driver.browser.switch_to.alert
    alert_text = alert.text
    expect(alert_text).to eq(errorAlert)
end


#When Select the "Done" option of radio button
When('Select the Done option of radio button') do
    xpath_base = '/html/body/section/div/form/div/div[1]/label'
    find(:xpath, xpath_base).click
end


#When I enter the Billing Address required fields as show below
When(/^I enter the Billing Address required fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
        when "FirstName:"
            fill_in 'fname', :with => value
        when "LastName:"
            fill_in 'lname', :with => value
        when "Email:"
            fill_in 'email', :with => value
        when "Enter your Addrress:"
            fill_in 'message', :with => value
        when "Mobile Number:"
            fill_in 'telephoneno', :with => value
	end
  end
end

#Then I should see a table with the following information:
Then('I should see a table with the following information:') do |table|
    customerID = find(:xpath, '/html/body/section/div/div/table/tbody/tr[1]/td[2]/h3')
    expect(customerID).to have_text(/\d\d\d\d\d\d/)
end

#When I click in the following fields
When(/^I click in the following fields$/) do |table|
    counter = 4
    table.hashes.each do |row|
        if counter != 7
            xpath_base = '/html/body/section/div/form/div/div[%i]/input'
        else
            xpath_base = '/html/body/section/div/form/div/div[%i]/textarea'
        end
        find(:xpath, xpath_base % [counter]).click
        counter += 1 
    end
end


#Then I should see the following error messages:
Then('I should see the following error messages:') do |table|
    table.hashes.each do |row|
        expect(page).to have_content(row['navigator'])
    end
end

#Then I should see all the fields empty like:
Then('I should see all the fields empty like:') do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        value = find_field(key).value
        expect(value).to eq('')
    end
end