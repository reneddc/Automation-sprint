Given(/^I am on the insurance project pages h$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/insurance/v1/index.php')
  end
  

When(/^I enter my email and password in the form s$/) do
    fill_in 'email', :with => ENV['Email']
    fill_in 'password', :with => ENV['Password']
  end

And(/^I press the "Login" button s$/) do
    xpath_base = '/html/body/div[3]/form/div[3]/input'
    find(:xpath, xpath_base).click
  end

When(/^I press the "Home" button h$/) do
    xpath_base = '/html/body/div[3]/div/ul/li[1]/a'
    find(:xpath, xpath_base).click
  end

Then(/^I should see the message Broker Insurance Web Page$/) do
    broken_insurance_webpage = "Broker Insurance WebPage"
    expect(page).to have_content(broken_insurance_webpage)

  end
  