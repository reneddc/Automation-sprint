class AgileProject
    attr_reader :page
  
    def initialize(page)
      @page = page
    end

    def fillLogInForm(userId, password)
      @page.fill_in('uid', with: userId)
      @page.fill_in('password', with: password)
    end

    def getErrorAlertText
        sleep 3
        alert = page.driver.browser.switch_to.alert
        alert.text
    end
end