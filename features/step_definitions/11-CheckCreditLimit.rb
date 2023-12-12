Given(/^I am on the payment gateway project sections$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/payment-gateway/index.php')
  end
And(/^I press the "Check Credit Card Limit" button cc$/) do
    xpath_base = '/html/body/header/div/nav/a[3]'
    find(:xpath, xpath_base).click
  end

 When(/^I enter the required field of card$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Enter Credit Card Number:"
        fill_in 'card_nmuber', :with => value
      end
    end
  end
Then(/^I should be able to see my information about the money spent and what I spent it on$/) do
    checkc = "Check Credit Balance"
    expect(page).to have_content(checkc)

    rows = all(:xpath, '/html/body/section/div/div/table')

    rows.each do |row|
      card_number = row.find(:xpath, '/html/body/section/div/div/table/thead/tr/th[1]').text
      amount = row.find(:xpath, '/html/body/section/div/div/table/thead/tr/th[2]').text
      month = row.find(:xpath, '/html/body/section/div/div/table/thead/tr/th[3]').text
      year = row.find(:xpath, '/html/body/section/div/div/table/thead/tr/th[4]').text
      cvv = row.find(:xpath, '/html/body/section/div/div/table/thead/tr/th[5]').text
      order_id = row.find(:xpath, '/html/body/section/div/div/table/thead/tr/th[6]').text

      expect(card_number).to eq('4825088890201232')
      expect(amount).to eq('$120')
      expect(month).to eq('11')
      expect(year).to eq('2025')
      expect(cvv).to eq('677')
      expect(order_id).to eq('737075')
  
    end
  end
  