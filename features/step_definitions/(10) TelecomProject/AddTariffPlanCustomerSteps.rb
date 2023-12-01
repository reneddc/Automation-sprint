#When I enter <customerID> in the field "Enter Your Customer ID"
When(/^I enter "([^"]*)" in the field "Enter Your Customer ID"$/) do |customerID|
    fill_in 'Enter Your Customer ID', :with => customerID
end

#And I see the button "Add Tariff Plan to Customer"
Then('I see the button {string}') do |button|
    find_link(button) 
end

#And I save the customerId generated
Then('I save the customerId generated') do
    customerID = find(:xpath, '/html/body/section/div/div/table/tbody/tr[1]/td[2]/h3')
    ENV['CUSTOMERID'] = customerID.text
    puts ENV['CUSTOMERID']
end

#When I enter the customerID created before
When('I enter the customerID created before') do
    fill_in 'Enter Your Customer ID', :with => ENV['CUSTOMERID']
end

#And I see the Approved Tariff Plans
#And I see the Unaproved Tariff Plans
Then('I see the {string} Tariff Plans') do |tariffPlan|
    if tariffPlan == "Approved"
        xpath_base = '/html/body/section/div/form/div[1]/table'
    else
        xpath_base = '/html/body/section/div/div/table'
    end
    page.has_xpath?(xpath_base)
end

#And I press the "Home" link below the CustomerId generated
When('I press the Home link below the CustomerId generated') do
    xpath_base = '/html/body/section/div/div/ul/li/a'
    find(:xpath, xpath_base).click
end

#And I select the Approved Tariff Plan
When('I select the Approved Tariff Plan') do
    xpath_base = '/html/body/section/div/form/div[1]/table/tbody/tr/td[1]/label'
    find(:css, xpath_base).click
end