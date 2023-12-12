#Before para todos los scenarios
Before do
  page.driver.browser.manage.window.maximize
  @homepage = Homepage.new(page)
  @InsuranceProject = InsuranceProject.new(page)
  @RegisterLoginInsuranceProject = RegisterLoginInsuranceProject.new(page)
  @RequestRetriveInsuranceProject = RequestRetriveInsuranceProject.new(page)
  @AgileProject = AgileProject.new(page)
  @PaymentGateway = PaymentGateway.new(page)
end

#After para todos los scenarios
After do
  Capybara.current_session.driver.quit
end

#Before para crear y obtener las credenciales de un user desde la homepage
Before '@createAndSaveUser' do 
  @homepage.visitHomepage
  @homepage.enterEmailId("carlos@test.com")
  click_button("Submit")
end

#Before para crear y obtener las credenciales de un user desde la homepage
Before '@generateCardNumber' do 
  @homepage.visitHomepage
  click_link('Payment Gateway Project')
end

#Before para crear un credit card
Before '@createNumberCard' do 
  @PaymentGateway.visitCardNumberPage
  credentials = @PaymentGateway.getCredentials()
end

#Before para guardar order Id
After '@saveOrderId' do 
  orderId = @PaymentGateway.getOrderId
  ENV['ORDERID'] = orderId
  orderId = @PaymentGateway.clickButtonHomeOrderId
end


After '@saveCustomerID' do 
  customerID = find(:xpath, '/html/body/section/div/div/table/tbody/tr[1]/td[2]/h3')
  ENV['CUSTOMERID'] = customerID.text
  puts ENV['CUSTOMERID']
end

After '@backToCustomerIDForm' do 
  click_link('Add Tariff Plan to Customer')
end

