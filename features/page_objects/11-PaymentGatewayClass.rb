class PaymentGateway
    attr_reader :page
  
    def initialize(page)
      @page = page
    end

    def fillFields(field, value)
        case field
            when "Quantity"
                @page.select(value, :from => 'quantity')
            when "Card Number"
                @page.fill_in 'card_nmuber', :with => value
            when "Expiration Month"
                @page.select(value, :from => 'month')
            when "Expiration Year"
                @page.select(value, :from => 'year')
            when "CVV Code"
                @page.fill_in 'cvv_code', :with => value
        end
    end

    def getPayAmmountContainer
        element = @page.find(:css, '#three > div > form > div.row > div')
        element
    end

    def getOrderId
        element = @page.find(:css, '#three > div > div > table > tbody > tr:nth-child(1)')
        element.text
    end

    def clickButtonHomeOrderId
        @page.within(:xpath, "/html/body/section/div/div") do
            @page.click_link('Home')
        end
    end

    def setCredentialsCreated()
        credentials = []
        xpath_base = '/html/body/section/div/h4[%i]'
        for counter in 1..3
            credentialText = @page.find(:xpath, xpath_base % [counter]).text
            credentials.push(credentialText)
        end
        credentials
    end

    def getCredentials()
        credentials = setCredentialsCreated()
        credentials[0] = credentials[0].scan(/\d+/).first
        credentials[1] = credentials[1].scan(/\d+/).first
        date = credentials[2].scan(/\d+/)
        credentials[2] = date[0]
        credentials.push(date[1])
        saveCredentials(credentials)
        credentials
    end

    def saveCredentials(credentials)
        ENV['CARDNUMBER'] = credentials[0]
        ENV['CCV'] = credentials[1]
        ENV['MONTH'] = credentials[2]
        ENV['YEAR'] = credentials[3]
        puts ENV['CARDNUMBER']
    end

    def visitCardNumberPage()
        @page.visit('https://demo.guru99.com/payment-gateway/cardnumber.php')
    end
end