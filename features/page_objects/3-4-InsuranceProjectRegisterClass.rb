class RegisterLoginInsuranceProject
    attr_reader :page
  
    def initialize(page)
        @page = page
    end

    def setInitialRegisterForm(table)
        @initialRegisterForm = getRegisterFormValues(table)
    end

    def getInitialRegisterForm
        @initialRegisterForm
    end

    def fillConfirmPasswordField(password)
        @page.fill_in 'c_password', :with => password
    end

    def fillRegisterForm(table)
        data = table.rows_hash
        data.each_pair do |key, value|
            case key
                when "Title:"
                    @page.select(value, :from => 'title')
                when "First Name:"
                    @page.fill_in('firstname', with:value)
                    @name = value
                when "Surname:"
                    @page.fill_in('lastname', :with => value)
                    @lastName = value
                when "Phone:"
                    @page.fill_in('phone', :with => value)
                when "Year:"
                    @page.select(value, :from => 'year')
                when "Month:"
                    @page.select(value, :from => 'month')
                when "Date:"
                    @page.select(value, :from => 'date')
                when "Full or Provisional:"
                    @page.choose(value)
                when "Licence Period:"
                    @page.select(value, :from => 'licenceperiod')
                when "Occupation:"
                    @page.select(value, :from => 'occupation')
                when "Street:"
                    @page.fill_in 'street', :with => value
                when "City:"
                    @page.fill_in 'city', :with => value
                when "County:"
                    @page.fill_in 'county', :with => value
                when "Post code:"
                    @page.fill_in 'post_code', :with => value
                when "Email:"
                    @page.fill_in 'email', :with => value
                when "Password:"
                    @page.fill_in 'password', :with => value
                when "Confirm password:"
                    @page.fill_in 'c_password', :with => value
            end
        end
    end

    def getRegisterFormValues(table)
        formFieldsValues = []
        email = ""
        password = ""
        c_password = ""
        data = table.rows_hash
        data.each_pair do |key,value|
            case key
                when "Title:"
                    formFieldsValues.push(@page.find_field('title').value)
                when "First Name:"
                    formFieldsValues.push(@page.find_field('firstname').value)
                when "Surname:"
                    formFieldsValues.push(@page.find_field('lastname').value)
                when "Phone:"
                    formFieldsValues.push(@page.find_field('phone').value)
                when "Year:"
                    formFieldsValues.push(@page.find_field('year').value)
                when "Month:"
                    formFieldsValues.push(@page.find_field('month').value)
                when "Date:"
                    formFieldsValues.push(@page.find_field('date').value)
                when "Full or Provisional:"
                    formFieldsValues.push(@page.find_field('date').value)
                when "Licence Period:"
                    formFieldsValues.push(@page.find_field('licenceperiod').value)
                when "Occupation:"
                    formFieldsValues.push(@page.find_field('occupation').value)
                when "Street:"
                    formFieldsValues.push(@page.find_field('street').value)
                when "City:"
                    formFieldsValues.push(@page.find_field('city').value)
                when "County:"
                    formFieldsValues.push(@page.find_field('county').value)
                when "Post code:"
                    formFieldsValues.push(@page.find_field('post_code').value)
                when "Email:"
                    email = @page.find_field('email').value
                    formFieldsValues.push(email)
                when "Password:"
                    password = @page.find_field('password').value
                    formFieldsValues.push(password)
                when "Confirm password:"
                    c_password = @page.find_field('c_password').value
                    formFieldsValues.push(c_password)
            end
        end
        formFieldsValues
    end

    def fillLogInForm(email, password)
        @page.fill_in('email', with:email)
        @page.fill_in('password', with:password)
        sleep 2
    end
end