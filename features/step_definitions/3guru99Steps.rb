Given(/^I am on the Insurance Project$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/insurance/v1/index.php')
  end
  
Given(/^I click the "Register" button$/) do
    xpath_base = '/html/body/div[3]/a'
    find(:xpath, xpath_base).click
  end
  
  # When(/^I enter the required fields as show belowss$/) do |table|
  #   data = table.rows_hash
  #   data.each_pair do |key, value|
  #     case key
  #   when "First Name:"
  #       fill_in 'firstName', :with => value
  #       @name = value
  #   when "Last Name:"
  #     fill_in 'lastName', :with => value
  #     @lastName = value
  #     when "Phone:"
  #     fill_in 'phone', :with => value
  #     when "Email:"
  #     fill_in 'userName', :with => value
  #   when "Address:"
  #     fill_in 'address1', :with => value
  #   when "City:"
  #     fill_in 'city', :with => value
  #   when "State/Province:"
  #     fill_in 'state', :with => value
  #   when "Postal Code:"
  #     fill_in 'postalCode', :with => value
  #   when "Country:"
  #     select(value, :from => 'country')
  #   when "User Name:"
  #     fill_in 'email', :with => value
  #     @userName = value
  #   when "Password:"
  #     fill_in 'password', :with => value
  #   when "Confirm Password:"
  #     fill_in 'confirmPassword', :with => value
  #     @password = value
  #   end
  #   end
  # end
  
  When(/^send my registration form$/) do
    xpath_base = '/html/body/div[3]/form/div[5]/input[2]'
    find(:xpath, xpath_base).click
  end

  
  Given(/^I enter my username and password$/) do
    fill_in 'email', :with => ENV['USER']
    fill_in 'password', :with => ENV['PSW']
  end
  
  When(/^I press the "([^"]*)" button$/) do |arg1|
    xpath = '/html/body/div[3]/form/div[3]/input'
    find(:xpath, xpath).click
  end
  
  Then(/^Broker Insurance WebPage is displayedsss$/) do
    expect(page).to have_content("Broker Insurance WebPage")
   
  end
  