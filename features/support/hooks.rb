
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

After '@saveCustomerID' do 
  customerID = find(:xpath, '/html/body/section/div/div/table/tbody/tr[1]/td[2]/h3')
  ENV['CUSTOMERID'] = customerID.text
  puts ENV['CUSTOMERID']
end