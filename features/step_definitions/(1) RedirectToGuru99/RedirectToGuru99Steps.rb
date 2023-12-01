#Given I am on the sample homepage
Given(/^I am on the sample homepage$/) do
    visit 'http://demo.guru99.com/'
end

#When I press the Deme Guru99 logo
When('I press the Demo Guru99 logo') do
    xpath_base = '/html/body/div[1]/div[1]/div[1]/div[1]/a/img'
    find(:xpath, xpath_base).click
end

#Then the DemoGuru99 logo should change to Guru99 logo
Then('the DemoGuru99 logo should change to Guru99 logo') do
    xpath_base = '/html/body/div[1]/header/div[1]/div/div/div/div/div/div/div/div[1]/div/div/a/img'
    logo = find(:xpath, xpath_base)[:alt]
    expect(logo).to have_content("Guru99")
end

#And I should see the followings navbar options 
Then('I should see the followings navbar options') do |table|
    xpath_base = '/html/body/div[1]/header/div[1]/div/div/div/div/div/div/div'
    menu = find(:xpath, xpath_base)
    table.hashes.each do |row|
        expect(menu).to have_content(row['navigator'])
    end
end
