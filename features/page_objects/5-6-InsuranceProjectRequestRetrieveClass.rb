class RequestRetriveInsuranceProject
  attr_reader :page

  def initialize(page)
      @page = page
  end

  def getCurrentSection
    currentSection = ""
    begin
        @page.find(:xpath, "/html/body/div[3]/div/div[2]/h2")
        currentSection = "Request Quotation"
    rescue Capybara::ElementNotFound
        currentSection = "Retrieve Quotation"
    end
    currentSection
  end

  def fillRequestQuotationForm(table)
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "Breakdowncover:"
          @page.select(value, :from => '0')
        when "Windscreenrepair:"
          @page.choose(value)
        when "Incidents:"
          @page.fill_in 'incidents', :with => value 
        when "Registration:"
          @page.fill_in 'registration', :with => value
        when "Annual mileage:"
          @page.fill_in 'mileage', :with => value 
        when "Estimated value:"
          @page.fill_in 'value', :with => value
        when "Parking Location:"
          @page.select(value, :from => 'parkinglocation')
        when "Year:"
          @page.select(value, :from => 'year')
        when "Month:"
          @page.select(value, :from => 'month')
        when "Date:"
          @page.select(value, :from => 'date')
      end
    end
  end

  def setInitialRequestForm(table)
    @initialRegisterForm = getRequestFormValues(table)
  end

  def getInitialRequestForm
    @initialRegisterForm
  end

  def getRequestFormValues(table)
    formFieldsValues = []
    identification_number = ""
    data = table.rows_hash
    data.each_pair do |key,value|
      case key
        when "Breakdowncover:"
          formFieldsValues.push(@page.find_field('0').value)
        when "Incidents:"
          formFieldsValues.push(@page.find_field('incidents').value)
        when "Registration:"
          formFieldsValues.push(@page.find_field('registration').value)
        when "Annual mileage:"
          formFieldsValues.push(@page.find_field('mileage').value)
        when "Estimated value:"
          formFieldsValues.push(@page.find_field('value').value)
        when "Parking Location:"
          formFieldsValues.push(@page.find_field('parkinglocation').value)
        when "Year:"
          formFieldsValues.push(@page.find_field('year').value)
        when "Month:"
          formFieldsValues.push(@page.find_field('month').value)
        when "Date:"
          formFieldsValues.push(@page.find_field('date').value)
      end
    end
    formFieldsValues
  end

  def fillRetrieveQuotationForm(id_number)
    @page.fill_in 'id', :with => id_number
  end

  def getExpectedRequestQuotation(table)
    expectedQuotation = []
    table.hashes.each do |row|
      expectedQuotation.push(row['Value'])
    end
    expectedQuotation
  end

  def getCurrentRequestQuotation(table)
    currentQuotation = []
    tablePath = '/html/body/table/tbody/tr[%i]/td[2]'
    counter = 2
    table.hashes.each do |row|
      puts {tablePath % [counter]}
      tableText = @page.find(:xpath, tablePath % [counter]).text
      currentQuotation.push(tableText)
      counter += 1
    end
    currentQuotation
  end
end