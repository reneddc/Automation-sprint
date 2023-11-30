Given(/^I am on the insurance project pages$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/insurance/v1/index.php')
  end
  
When(/^I enter my email and password in the forms$/) do
    fill_in 'email', :with => ENV['Email']
    fill_in 'password', :with => ENV['Password']
  end

And(/^I pre the "Login" button$/) do
    xpath_base = '/html/body/div[3]/form/div[3]/input'
    find(:xpath, xpath_base).click
  end

And(/^I press the "Retrieve Quote" button n$/) do
    xpath_base = '/html/body/div[3]/div/ul/li[3]/a'
    find(:xpath, xpath_base).click
  end

When(/^I enter the identification number$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Identification Number:"
      fill_in 'id', :with => value 
      end
    end
  end
And(/^I press the "Retrieve" button s$/) do
    xpath_base = '/html/body/div[3]/div/div[3]/form/input[2]'
    find(:xpath, xpath_base).click
  end

# Then(/^I should see a message confirming that it was saved$/) do

#   saved_quotation = "You have saved this quotation!"
#   identification_number = /Your identification number is : (\d+)/
#   write_it_down_for_later = "Please write it down for later retrieve"
  
#   expect(page).to have_content(saved_quotation)
#   expect(page).to have_content(identification_number)
#   expect(page).to have_content(write_it_down_for_later)
  
#   end