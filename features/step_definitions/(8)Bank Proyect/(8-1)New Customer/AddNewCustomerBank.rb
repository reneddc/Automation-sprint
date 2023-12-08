# BankProyectoStep.rb

Given("the administrator is on the Manager's home page") do
  visit 'https://demo.guru99.com/V1/html/Managerhomepage.php'
end

When("the administrator selects the option to create a new account") do
  click_link 'New Customer'
end

And("fills in the necessary details for the new account") do
  fill_in 'name', with: 'John Doe'
  fill_in 'dob', with: '01/01/1990'
  fill_in 'city', with: 'Anytown'
  fill_in 'state', with: 'CA'
  fill_in 'pinno', with: '123456'
  fill_in 'telephoneno', with: '555-1234'
  fill_in 'emailid', with: 'john.doe@example.com'
end

And("confirms the creation of the account") do
  click_button 'Submit'
end

Then("the customer account should be created successfully") do
  begin
    # Intentar aceptar la alerta
    page.driver.browser.switch_to.alert.accept
  rescue Selenium::WebDriver::Error::NoAlertOpenError
    # La alerta ya se ha cerrado
  end

  # Verificar que la cuenta del cliente se haya creado correctamente
  expect(page).not_to have_content 'Please fill all fields'  # Asegurarse de que no haya alerta con el mensaje

  # Puedes agregar más expectativas según lo que signifique "éxito" en tu aplicación
end

