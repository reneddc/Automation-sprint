class LogInInsuranceProject
    attr_reader :page
  
    def initialize(page)
        @page = page
    end

    def fillLogInForm(email, password)
        @page.fill_in('email', with:email)
        @page.fill_in('password', with:password)
        sleep 2
    end
end