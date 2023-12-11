

#And I enter the userId "1303" and password "Guru99"
When ("I enter the userId {string} and password {string}") do |userId, password|
    @AgileProject.fillLogInForm(userId, password)
end

#Then I should see the alert "please fill all fields"
Then('I should see the alert {string}') do |errorAlert|
    alert_text = @AgileProject.getErrorAlertText
    expect(alert_text).to eq(errorAlert)
end

#And I enter the userId and password created in Guru99 Homepage
When ("I enter the userId and password created in Guru99 Homepage") do
    @AgileProject.fillLogInForm(ENV['USERID'], ENV['USERPASSWORD'])
end

