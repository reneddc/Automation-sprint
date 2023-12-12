#And I fill the "Quantity" field with "<quantity>"
When("I fill the {string} field with {string}") do |field, value|
    @PaymentGateway.fillFields(field, value)
end


#And I see the pay ammount $"<ammount>"
Then("I see the pay ammount ${string}") do |ammount|
    payAmmount = @PaymentGateway.getPayAmmountContainer
    expect(payAmmount).to have_content(ammount)
end

#Then I see the order ID <orderId>
Then("I see the order ID {string}") do |orderId|
    orderId = @PaymentGateway.getOrderId
    expect(orderId).to have_text(/\d\d\d\d\d\d/)
end

#And I see the credentials of the credit card created like this
Then("I see the credentials of the credit card created like this") do |table|
    credentials = @PaymentGateway.getCredentials()
    expect(credentials[0].size).to eq(16)
    expect(credentials[1].size).to eq(3)
    expect(credentials[2].size).to eq(2)
    expect(credentials[3].size).to eq(4)
end

#Then I see the Generate Card Number page
When("I will change to the Generate Card Number page") do
    @PaymentGateway.visitCardNumberPage
end

#And I fill the fields with the number card created credentials
When("I fill the fields with the number card created credentials") do
    @PaymentGateway.fillFields("Card Number", ENV['CARDNUMBER'])
    @PaymentGateway.fillFields("Expiration Month",ENV['MONTH'] )
    @PaymentGateway.fillFields("Expiration Year", ENV['YEAR'])
    @PaymentGateway.fillFields("CVV Code", ENV['CCV'])
end