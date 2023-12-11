#Before para todos los scenarios
Before do
  page.driver.browser.manage.window.maximize
  @homepage = Homepage.new(page)
  @InsuranceProject = InsuranceProject.new(page)
  @RegisterInsuranceProject = RegisterInsuranceProject.new(page)
  @LogInInsuranceProject = LogInInsuranceProject.new(page)
end

#After para todos los scenarios
After do
    Capybara.current_session.driver.quit
end

After '@saveCustomerID' do 
  customerID = find(:xpath, '/html/body/section/div/div/table/tbody/tr[1]/td[2]/h3')
  ENV['CUSTOMERID'] = customerID.text
  puts ENV['CUSTOMERID']
end

After '@backToCustomerIDForm' do 
  click_link('Add Tariff Plan to Customer')
end

