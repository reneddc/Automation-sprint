#And I click the "Insurance Project" link of the navbar
When ("I click the {string} link of the navbar") do |project|
    click_link(project)
end

#Given I am in Guru99 Insurance "Log In" page
Given("I am in Guru99 Insurance {string} page") do |sectionPage|
    current_url = @InsuranceProject.getCurrentInsuranceSectionPath
    expected_url = @InsuranceProject.getExpectedInsuranceSectionPath(sectionPage)
    expect(expected_url).to eq(current_url)
end

#And I click the "Register" button-link
When("I click the {string} button-link") do |buttonLink|
    click_link(buttonLink)
end

#And I enter the register Guru99 Insurances fields
When("I enter the register Guru99 Insurances fields") do |table|
    @RegisterInsuranceProject.setInitialRegisterForm(table)
    @RegisterInsuranceProject.fillRegisterForm(table)
end

#Then I should see the Guru99 Insurance "Log In" page
Then("I should see the Guru99 Insurance {string} page") do |sectionPage|
    current_url = @InsuranceProject.getCurrentInsuranceSectionPath
    expected_url = @InsuranceProject.getExpectedInsuranceSectionPath(sectionPage)
    expect(expected_url).to eq(current_url)
end

#And I enter <invalid_password> in the Confirm Password field
When("I enter {string} in the Confirm Password field") do |invalid_password|
    @RegisterInsuranceProject.fillConfirmPasswordField(invalid_password)
end

#Then I see the Register fields empty like this
Then("I see the Register fields empty like this") do |table|
    initialRegisterForm = @RegisterInsuranceProject.getInitialRegisterForm()
    afterResetRegisterForm = @RegisterInsuranceProject.getRegisterFormValues(table)
    expect(initialRegisterForm).to eq(afterResetRegisterForm)
end

#I enter a registered email and password
When('I enter a registered email and password') do
    @LogInInsuranceProject.fillLogInForm(ENV['INSURANCE_EMAIL'], ENV['INSURANCE_PASSWORD'] )
end

#And I enter the email "<email>" and the password "<password>"
When('I enter the email {string} and the password {string}') do |email, password|
    @LogInInsuranceProject.fillLogInForm(email, password)
end