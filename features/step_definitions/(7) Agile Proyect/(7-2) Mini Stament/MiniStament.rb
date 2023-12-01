# features/step_definitions/agile_project_steps.rb

And('I am on the Mini Statement Input page') do
  page.driver.browser.manage.window.maximize
  visit 'https://demo.guru99.com/Agile_Project/Agi_V1/customer/MiniStatementInput.php'
end

When('I select the first option from the list') do
  # Ajusta 'tu_xpath_real' con el XPath exacto de tu elemento
  xpath = '/html/body/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select/option[1]'
  find(:xpath, xpath).select_option
end

And('I Press "Submit" button')do
  xpath_submit = '/html/body/table/tbody/tr/td/table/tbody/tr[11]/td[2]/input[1]'
  find(:xpath, xpath_submit).click
end
# features/step_definitions/(7) Agile Proyect/(7-2) Mini Stament/MiniStament.rb
# features/step_definitions/(7) Agile Proyect/(7-2) Mini Stament/MiniStament.rb

Then('I should see an error message from Google') do
  # Espera a que aparezca la alerta
  page.driver.browser.switch_to.alert

  # Acepta la alerta y maneja el mensaje específico
  alert = page.driver.browser.switch_to.alert
  alert_text = alert.text
  expect(alert_text).to eq('Account does not exist')
  alert.accept
end


When('I select the two option from the list') do
  # Ajusta 'tu_xpath_real' con el XPath exacto de tu elemento
  xpath = '/html/body/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select/option[2]'
  find(:xpath, xpath).select_option
end
And('I Press "Submit" for scene 2')do
  xpath_submit = '/html/body/table/tbody/tr/td/table/tbody/tr[11]/td[2]/input[1]'
  find(:xpath, xpath_submit).click
end

When('I select the third option from the list') do
  # Ajusta 'tu_xpath_real' con el XPath exacto de tu elemento
  xpath = '/html/body/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select/option[3]'
  find(:xpath, xpath).select_option
end
And('I Press "Submit" for scene 3')do
  xpath_submit = '/html/body/table/tbody/tr/td/table/tbody/tr[11]/td[2]/input[1]'
  find(:xpath, xpath_submit).click
end

When('I select the four option from the list') do
  # Ajusta 'tu_xpath_real' con el XPath exacto de tu elemento
  xpath = '/html/body/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select/option[4]'
  find(:xpath, xpath).select_option
end

And('I Press "Submit" for scene 4')do
  xpath_submit = '/html/body/table/tbody/tr/td/table/tbody/tr[11]/td[2]/input[1]'
  find(:xpath, xpath_submit).click
end
