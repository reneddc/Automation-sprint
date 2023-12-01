
After do
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

# features/support/hooks.rb

#After do
  # Aquí colocas la lógica para hacer clic en el botón "Submit" después de cada escenario
  #xpath_submit = '/html/body/table/tbody/tr/td/table/tbody/tr[11]/td[2]/input[1]'
 # find(:xpath, xpath_submit).click
#end
