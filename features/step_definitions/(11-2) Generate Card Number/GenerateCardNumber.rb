Given(/^I am on the payment gateway project section$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/payment-gateway/index.php')
  end
And(/^I press the "Generate Card Number" button g$/) do
    xpath_base = '/html/body/header/div/nav/a[2]'
    find(:xpath, xpath_base).click
  end
