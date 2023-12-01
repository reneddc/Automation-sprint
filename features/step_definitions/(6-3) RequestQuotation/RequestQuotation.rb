Given(/^I am on the Insurance Project Page$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/insurance/v1/index.php')
end

When(/^I enter my email and password in the form$/) do
  fill_in 'email', :with => ENV['Email']
  fill_in 'password', :with => ENV['Password']
end

And(/^I push the "Login" button$/) do
  xpath_base = '/html/body/div[3]/form/div[3]/input'
  find(:xpath, xpath_base).click
end

And(/^I click the "Request Quotation" button$/) do
  xpath_base = '/html/body/div[3]/div/ul/li[2]/a'
  find(:xpath, xpath_base).click
end

When(/^I enter the required fields with the following information$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
  when "Breakdowncover:"
    select(value, :from => '0')
  when "Windscreenrepair:"
    choose(value)
  when "Incidents:"
    fill_in 'incidents', :with => value 
  when "Registration:"
    fill_in 'registration', :with => value
  when "Annual mileage:"
    fill_in 'mileage', :with => value 
  when "Estimated value:"
    fill_in 'value', :with => value
  when "Parking Location:"
    select(value, :from => 'parkinglocation')
  when "Year:"
    select(value, :from => 'year')
  when "Month:"
    select(value, :from => 'month')
  when "Date:"
    select(value, :from => 'date')
    end
  end
end

When('I now click the {string} button') do |buttonName|
  click_button(buttonName) 
end

Then('I should {string}') do |result|
  case result
  when 'see a message confirming that it was saved'
    saved_quotation = "You have saved this quotation!"
    identification_number_regex = /Your identification number is : (\d+)/
    write_it_down_for_later = "Please write it down for later retrieve"

    expect(page).to have_content(saved_quotation)
    expect(page).to have_content(identification_number_regex)
    expect(page).to have_content(write_it_down_for_later)

  when 'reset all fields'
    all_fields = find(:xpath, '/html/body/div[3]/div/div[2]/form/div[7]').all('input')

    all_fields.each do |field|
      expect(field.value).to be_empty
    end

    select_value = find('#quotation_breakdowncover').value
    expect(select_value).to eq('2') 

    no_radio_checked = find('#quotation_windscreenrepair_f').checked?
    expect(no_radio_checked).to be true

    selected_option = find('#quotation_vehicle_attributes_parkinglocation').value
    expect(selected_option).to eq('')

    selected_option = find('#quotation_vehicle_attributes_policystart_1i').value
    expect(selected_option).to eq('2014')
    selected_option = find('#quotation_vehicle_attributes_policystart_2i').value
    expect(selected_option).to eq('2')
    selected_option = find('#quotation_vehicle_attributes_policystart_3i').value
    expect(selected_option).to eq('7')

  when 'the premium price'
    premium_regex = /Premium: £(\d+)/
    premium_match = page.find('#calculatedpremium').text.match(premium_regex)
  else
    raise "Unexpected result: #{result}"
  end
end

