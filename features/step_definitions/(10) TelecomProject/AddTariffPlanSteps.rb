#And I see the "Add Tariff Plan" title
Then('I see the {string} title') do |title|
    body = find(:xpath, "/html/body/section/div")
    expect(body).to have_content(title)
end

#When I enter the Add Tariff Plan required fields as show below
When(/^I enter the Add Tariff Plan required fields as show below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        fill_in key, :with => value
    end
end


#Then I should see the message "Congratulation you add Tariff Plan"
Then('I should see the message {string}') do |message|
    expect(page).to have_content(message)
end

#Then I should see the message "Number must not be blank" in every field
Then('I should see the message {string} in every field') do |message|
    xpath_base = '/html/body/section/div/form/div/div[%i]/label'
    for i in (3..33).step(5)
        label = find(:xpath, xpath_base % [i])
        expect(label).to have_content(message)
    end
end