
After do
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end



#After do
  #Aquí colocas la lógica para hacer clic en el botón "Submit" después de cada escenario
  #xpath_submit = '/html/body/table/tbody/tr/td/table/tbody/tr[11]/td[2]/input[1]'
 #find(:xpath, xpath_submit).click
#end

After '@saveCustomerID' do
  customerID = find(:xpath, '/html/body/section/div/div/table/tbody/tr[1]/td[2]/h3')
  ENV['CUSTOMERID'] = customerID.text
  puts ENV['CUSTOMERID']
end

After '@backToCustomerIDForm' do
  click_link('Add Tariff Plan to Customer')
end


After('@submit_butom') do
  xpath_submit = '/html/body/table/tbody/tr/td/table/tbody/tr[11]/td[2]/input[2]'
  find(:xpath, xpath_submit).click
end
