Given(/^I am on the payment gateway project$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/payment-gateway/index.php')
  end
  
When(/^I choose the quantity of elephants$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Quantity:"
      select(value, :from => 'quantity')
      end
    end
  end

And(/^I click the "Buy Now" button b$/) do
    xpath_base = '/html/body/section/div/form/div/div[8]/ul/li/input'
    find(:xpath, xpath_base).click
  end

Then(/^I should be able to see the payment process$/) do
    payment_process_webpage = "Payment Process"
    expect(page).to have_content(payment_process_webpage)

  end
  