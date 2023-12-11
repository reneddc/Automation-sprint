#Given I am in the Guru99 Insurance "Request Quotation" section
Given ("I am in the Guru99 Insurance {string} section") do |sectionPage|
    currentSection = @RequestRetriveInsuranceProject.getCurrentSection
    expectedSection = sectionPage
    expect(expectedSection).to eq(currentSection)
end

#And I click the "Request Quotation" link
When ("I click the {string} link") do |link|
    click_link(link)
end

#When I enter the following information in the fields
When ("I enter the following information in the fields") do |table|
    @RequestRetriveInsuranceProject.setInitialRequestForm(table)
    @RequestRetriveInsuranceProject.fillRequestQuotationForm(table)
end

#Then I should see the identification number like "33798"
Then ("I should see the identification number like {string}") do |number|
    expect(page).to have_content(/\b\d{5}\b/)
end

#Then I should see the filds like this
Then ("I should see the fields like this") do |table|
    initialRegisterForm = @RequestRetriveInsuranceProject.getInitialRequestForm
    afterResetRegisterForm = @RequestRetriveInsuranceProject.getRequestFormValues(table)
    expect(initialRegisterForm).to eq(afterResetRegisterForm)
end

#When I enter the identification number "<id_number>"in the field
When ("I enter the identification number {string}in the field") do |id_number|
    @RequestRetriveInsuranceProject.fillRetrieveQuotationForm(id_number)
end

#Then I should see the following Request Quotation Table
Then ("I should see the following Request Quotation Table") do |table|
    expectedValues = @RequestRetriveInsuranceProject.getExpectedRequestQuotation(table)
    currentValues = @RequestRetriveInsuranceProject.getCurrentRequestQuotation(table)
    expect(expectedValues).to eq(currentValues)
end