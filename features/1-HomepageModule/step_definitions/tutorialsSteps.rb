Given(/^I am on the sample homepage$/) do
  visit 'http://demo.guru99.com/'
end

#When I click the "Testing" tutorial
When('I click the {string} tutorial') do |tutorial|
  case tutorial
    when "Testing"
        xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[1]/a[1]/img'
    when "Selenium"
      xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[2]/a[1]/img'
    when "Live Project"
      xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[3]/a[1]/img'
    when "Java"
      xpath_base = '/html/body/div[1]/div[1]/div[2]/table/tbody/tr/td[4]/a[1]/img'
  end
  find(:xpath, xpath_base).click
end

#Then the title page change to "Software Testing Tutorial"
Then('the title page change to {string}') do |title|
  xpath_base = '/html/body/div[1]/div/div/div/main/div/article/div/header/h1'
  header = find(:xpath, xpath_base)
  expect(header).to have_text(title)
end

#And the page logo change to Guru99
Then('the page logo change to Guru99') do
  xpath_base = '/html/body/div[1]/header/div[2]/div/div/div/div/div/div/div/div[1]/div/div/a/img'
  logo = find(:xpath, xpath_base)[:alt]
  expect(logo).to have_content("Guru99")
end