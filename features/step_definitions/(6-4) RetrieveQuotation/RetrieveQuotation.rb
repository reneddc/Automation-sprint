Given(/^I am on the insurance project pages$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/insurance/v1/index.php')
  end
  
When(/^I enter my email and password in the forms$/) do
    fill_in 'email', :with => ENV['Email']
    fill_in 'password', :with => ENV['Password']
  end

And(/^I pre the "Login" button$/) do
    xpath_base = '/html/body/div[3]/form/div[3]/input'
    find(:xpath, xpath_base).click
  end

And(/^I press the "Retrieve Quote" button n$/) do
    xpath_base = '/html/body/div[3]/div/ul/li[3]/a'
    find(:xpath, xpath_base).click
  end

When(/^I enter the identification number$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Identification Number:"
      fill_in 'id', :with => value 
      end
    end
  end
And(/^I press the "Retrieve" button s$/) do
    xpath_base = '/html/body/div[3]/div/div[3]/form/input[2]'
    find(:xpath, xpath_base).click
  end

  Then(/^I should be able to see my retrieved quotation$/) do
    
    user_id_element = find('td b', text: 'user_id').find(:xpath, '//table[@border="1"]/tbody/tr[4]/td[2]')
    user_id = user_id_element.text.to_i
    expect(user_id).to eq(73135)

    yes_element = find(:xpath, '//table[@border="1"]/tbody/tr[3]/td[2]')
    yes_text = yes_element.text
    expect(yes_text).to eq('Yes')

    incidents_element = find(:xpath, '//table[@border="1"]/tbody/tr[5]/td[2]')
    incidents_element = incidents_element.text
    expect(incidents_element).to eq('0')

    incidents_element = find(:xpath, '//table[@border="1"]/tbody/tr[5]/td[2]')
    incidents_element = incidents_element.text
    expect(incidents_element).to eq('0')

    registration_element = find(:xpath, '//table[@border="1"]/tbody/tr[6]/td[2]')
    registration_element = registration_element.text
    expect(registration_element).to eq('ABC123')

    annual_mileage_element = find(:xpath, '//table[@border="1"]/tbody/tr[7]/td[2]')
    annual_mileage_element = annual_mileage_element.text
    expect(annual_mileage_element).to eq('12000')

    estimated_value_element = find(:xpath, '//table[@border="1"]/tbody/tr[8]/td[2]')
    estimated_value_element = estimated_value_element.text
    expect(estimated_value_element).to eq('15000')

    parking_location_element = find(:xpath, '//table[@border="1"]/tbody/tr[9]/td[2]')
    parking_location_element = parking_location_element.text
    expect(parking_location_element).to eq('Public place')

    start_of_policy = find(:xpath, '//table[@border="1"]/tbody/tr[10]/td[2]')
    start_of_policy = start_of_policy.text
    expect(start_of_policy).to eq('2018.8.15')

  end
  