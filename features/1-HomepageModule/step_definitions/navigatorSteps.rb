#When I click the "Selenium" option of the navbar
When('I click the {string} option of the navbar') do |option|
    case option
        when "Selenium"
            xpath_base = '/html/body/div[1]/div[2]/nav/div/div/ul/li[1]/a'
        when "Insurance Project"
            xpath_base = '/html/body/div[1]/div[2]/nav/div/div/ul/li[3]'
        when "Agile Project"
            xpath_base = '/html/body/div[1]/div[2]/nav/div/div/ul/li[3]'
    end
    find(:xpath, xpath_base).click
end

#Then I should see the following projects in the menu
Then('I should see the following projects in the menu') do |table|
    xpath_base = '/html/body/div[1]/div[2]/nav/div/div/ul/li[1]/ul'
    menu = find(:xpath, xpath_base)
    table.hashes.each do |row|
        expect(menu).to have_content(row['project'])
    end
end

#Then I should see a login form
Then('I should see a login form') do
    email_label_path = '/html/body/div[3]/form/div[1]/label'
    password_label_path = '/html/body/div[3]/form/div[2]/label'
    email_label = find(:xpath, email_label_path).text
    password_label = find(:xpath, password_label_path).text
    expect(email_label).to eq("Email")
    expect(password_label).to eq("Password")
end

#And a "Register" button
Then('a Register button') do
    if button == "Register"
        xpath_base = '/html/body/div[3]/a'
    else
        xpath_base = '/html/body/div[3]/form/div[3]/input'
    end
    textButton = find(:xpath, xpath_base)
    expect(page).to have_xpath(xpath_base)
end
