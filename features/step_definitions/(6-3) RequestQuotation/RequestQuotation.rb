Given(/^I am on the Insurance Project Page$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/insurance/v1/index.php')
  end
  
When(/^I enter my email and password in the form$/) do
    fill_in 'email', :with => ENV['Email']
    fill_in 'password', :with => ENV['Password']
  end

And(/^I pres the "Login" button$/) do
    xpath_base = '/html/body/div[3]/form/div[3]/input'
    find(:xpath, xpath_base).click
  end

And(/^I pres the "Request Quotation" button$/) do
    xpath_base = '/html/body/div[3]/div/ul/li[2]/a'
    find(:xpath, xpath_base).click
  end

When(/^I enter the required fields with the following information$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Breakdowncover:"
      select(value, :from => '0')
    when "Windscreenrepair:"
      choose(value)
    when "Incidents:"
      fill_in 'incidents', :with => value 
    when "Registration:"
      fill_in 'registration', :with => value
    when "Annual mileage:"
      fill_in 'mileage', :with => value 
    when "Estimated value:"
      fill_in 'value', :with => value
    when "Parking Location:"
      select(value, :from => 'parkinglocation')
    when "Year:"
      select(value, :from => 'year')
    when "Month:"
      select(value, :from => 'month')
    when "Date:"
      select(value, :from => 'date')
      end
    end
  end
And(/^I pres the "Save Quotation" button$/) do
    xpath_base = '/html/body/div[3]/div/div[2]/form/div[8]/input[3]'
    find(:xpath, xpath_base).click
  end

Then(/^I should see a message confirming that it was saved$/) do

  saved_quotation = "You have saved this quotation!"
  identification_number = /Your identification number is : (\d+)/
  write_it_down_for_later = "Please write it down for later retrieve"
  
  expect(page).to have_content(saved_quotation)
  expect(page).to have_content(identification_number)
  expect(page).to have_content(write_it_down_for_later)
  
  end