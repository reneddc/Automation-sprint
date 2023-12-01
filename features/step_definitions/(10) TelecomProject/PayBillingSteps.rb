#Then I should see the customerID in the screen
Then('I should see the customerID in the screen') do
    customerText = "Customer ID:- " + ENV['CUSTOMERID']	
    expect(page).to have_content(customerText)
end


#And I should see the next table:
Then('I should see the next table:') do |table|
    row1_xpath = '/html/body/section/div/div/table/tbody/tr[%i]/td[2]'
    row2_xpath = '/html/body/section/div/div/table/tbody/tr[%i]/td[3]'
    row3_xpath = '/html/body/section/div/div/table/tbody/tr[%i]/td[4]'
    row4_xpath = '/html/body/section/div/div/table/tbody/tr[%i]/td[5]'
    counter = 1
    table.hashes.each do |row|
        expect(find(:xpath, row1_xpath % [counter])).to have_content(row['Free Usage Limit'])
        expect(find(:xpath, row2_xpath % [counter])).to have_content(row['Actual Usage'])
        expect(find(:xpath, row3_xpath % [counter])).to have_content(row['Over Free'])
        expect(find(:xpath, row4_xpath % [counter])).to have_content(row['Usage Charges'])
        counter+=1
    end
end

#And I should see the next additional information:
Then('I should see the next additional information:') do |table|
    row1_xpath = '/html/body/section/div/div/table/tbody/tr[%i]/td[1]'
    row2_xpath = '/html/body/section/div/div/table/tbody/tr[%i]/td[2]'
    counter = 4
    table.hashes.each do |row|
        expect(find(:xpath, row1_xpath % [counter])).to have_content(row['Total'])
        expect(find(:xpath, row2_xpath % [counter])).to have_content(row['Amount'])
        counter+=1
    end
end