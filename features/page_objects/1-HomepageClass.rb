class Homepage
    attr_reader :page
  
    def initialize(page)
      @page = page
    end
  
    def visitHomepage
      @page.visit('http://demo.guru99.com/')
    end

    def enterEmailId(emailAddress)
      @page.fill_in('emailid', with: emailAddress)
    end

    def showUserId
      element = @page.find(:css, 'body > table > tbody > tr:nth-child(4) > td:nth-child(2)')
      userId_result = element.text.match(/\Amngr\d\d\d\d\d\d\z/)
      puts {userId_result}
      userId_result
    end

    def showUserPswd
      element = @page.find(:css, 'body > table > tbody > tr:nth-child(5) > td:nth-child(2)')
      pswd_result = element.text.match(/\A[a-zA-Z]{7}\z/)
      puts {pswd_result}
      pswd_result
    end

    def clickTutorial(tutorial)
      @page.within(:xpath, "/html/body/div[1]/div[1]/div[2]/table/tbody/tr") do
        @page.click_link(tutorial)
      end
    end

    def findHeader
      xpath_base = '/html/body/div[1]/div/div/div/main/div/article/div/header/h1'
      header = @page.find(:xpath, xpath_base)
    end

    def findLogoName
      xpath_base = '/html/body/div[1]/header/div[1]/div/div/div/div/div/div/div/div[1]/div/div/a/img'
      logo = @page.find(:xpath, xpath_base)[:alt]
    end

    def saveCredentials
      ENV['USERID'] = showUserId
      puts "Esto es el userID"
      puts {ENV['USERID']}
      ENV['USERPASSWORD'] = showUserPswd
    end
end