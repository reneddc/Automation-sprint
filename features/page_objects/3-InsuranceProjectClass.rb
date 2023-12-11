class InsuranceProject
    attr_reader :page
  
    def initialize(page)
        @page = page
        @adds = [
            '#dismiss-button',
            '/html/body/div/div/div[1]/div[1]/div/svg/path[1]',
            '/html/body/div[1]/div[2]/div[2]/div/div/div/div[1]/div/span',
            '/html/body/div/div/div[1]/div[1]/div/svg'
        ]
    end

    def getExpectedInsuranceSectionPath(sectionPage)
        expected_url = ""
        case sectionPage
            when "Guru99 Insurance Log In"
                expected_url = "https://demo.guru99.com/insurance/v1/index.php"
            when "Guru99 Insurance Home"
                expected_url = "https://demo.guru99.com/insurance/v1/header.php"
            when "Agile Project Log In"
                expected_url = "https://demo.guru99.com/Agile_Project/Agi_V1/"
            when "Agile Project Home"
                expected_url = "https://demo.guru99.com/Agile_Project/Agi_V1/customer/Customerhomepage.php"
            when "Guru99 GPTL Project Log In"
                expected_url = "https://demo.guru99.com/V1/index.php"
            when "GPTL Bank Project Home"
                expected_url = "https://demo.guru99.com/V1/html/Managerhomepage.php"
            when "Guru99 Security Bank project Log In"
                expected_url = "https://demo.guru99.com/Security/SEC_V1/index.php"
            when "Guru99 Security Bank project Home"
                expected_url = "https://demo.guru99.com/Security/SEC_V1/customer/Customerhomepage.php"
        end
        expected_url
    end

    def getCurrentInsuranceSectionPath
        if @page.current_url == "https://demo.guru99.com/#google_vignette"
            sleep 5
        end
        current_url = @page.current_url
        current_url
    end
end