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

Then(/^I should be able to see the payment process and the price$/) do
    payment_process_webpage = "Payment Process"
    expect(page).to have_content(payment_process_webpage)
    expect(page).to have_css('#three > div > form > div.row > div', text: '$120.00')
  end

When(/^I enter the required fields payment$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Card Number:"
        fill_in 'card_nmuber', :with => value
    when "Expiration Month:"
        select(value, :from => 'month')
    when "Expiration Year:"
        select(value, :from => 'year')
    when "CVV Code:"
        fill_in 'cvv_code', :with => value
      end
    end
  end
  And(/^I press the "Pay" button pb$/) do
    xpath_base = '/html/body/section/div/form/div[2]/div/ul/li/input'
    find(:xpath, xpath_base).click
  end
  Then(/^I should be able to see the message payment successfull and my order id$/) do
    payment_successfull = "Payment successfull!"
    expect(page).to have_content(payment_successfull)

    second_cell_element = find(:xpath, '//table[@class="alt access"]/tbody/tr/td[2]')
    value_in_second_cell = second_cell_element.text
    expect(value_in_second_cell).not_to be_empty

  end
