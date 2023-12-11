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
      @page.find(:xpath, '/html/body/table/tbody/tr[4]/td[2]', :text => /\Amngr\d\d\d\d\d\d\z/)
    end

    def clickTutorial(tutorial)
      @page.within(:xpath, "/html/body/div[1]/div[1]/div[2]/table/tbody") do
        @page.click_link(tutorial)
      end
    end

    def findHeader
      xpath_base = '/html/body/div[1]/div/div/div/main/div/article/div/header'
      header = @page.find(:xpath, xpath_base)
    end

    def findLogoName
      xpath_base = '/html/body/div[1]/header/div[1]/div/div/div/div/div/div/div/div[1]/div/div/a/img'
      logo = @page.find(:xpath, xpath_base)[:alt]
    end
end