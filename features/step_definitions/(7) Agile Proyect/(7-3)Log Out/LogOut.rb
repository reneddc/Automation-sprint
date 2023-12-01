

When(/^I click the "Log out" link on the (.*) page$/) do |page_name|
  # Ajusta 'tu_xpath_real' con el XPath exacto de tu elemento
  xpath = case page_name
          when 'Customer Homepage'
            '/html/body/div[3]/div/ul/li[3]/a'
          when 'Security Project'
            '/tu/xpath/para/security_project'
          else
            # Ajusta esto según tu aplicación
            '/html/body/div[3]/div/ul/li[3]'
          end

  find(:xpath, xpath).click
end

Then('I should see an message from Google') do
  # Espera a que aparezca la alerta
  page.driver.browser.switch_to.alert

  # Acepta la alerta y maneja el mensaje específico
  alert = page.driver.browser.switch_to.alert
  alert_text = alert.text
  expect(alert_text).to eq('You Have Succesfully Logged Out!!')
  alert.accept
end
