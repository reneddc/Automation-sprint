#When I click the "Testing" tutorial
When('I click the {string} tutorial') do |tutorial|
    within(:xpath, "/html/body/div[1]/div[1]/div[2]/table/tbody") do
        click_link(tutorial)
    end
end

#Then the title page change to "Software Testing Tutorial"
Then('the title page change to {string}') do |title|
    xpath_base = '/html/body/div[1]/div/div/div/main/div/article/div/header'
    header = find(:xpath, xpath_base)
    expect(header).to have_text(title)
end
