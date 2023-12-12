begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'

#InsuranceCredentials
ENV['INSURANCE_EMAIL'] = "pepitope5000@gmail.com"
ENV['INSURANCE_PASSWORD'] = "prueba123"
ENV['ID_NUMBER'] = "33808"

#HomepageCredentials
ENV['USERID'] = "mngr539425"
ENV['USERPASSWORD'] = "ytypErU"

#orderid
ENV['ORDERID'] = "000000"

#CARD NUMBRE CREDENTIALS
ENV['CARDNUMBER'] = "000000000000000"
ENV['CCV'] = "000"
ENV['MONTH'] = "00"
ENV['YEAR'] = "0000"

#PTravel Settings
ENV['USER']="Pepazo"
ENV['PSW']="ILoveQA"

#Telecom Project - Customer Information
ENV['FNAME']="Hugo"
ENV['CUSTOMERID']=""

Capybara.default_driver = :selenium

# Set the host the Capybara tests should be run against
Capybara.app_host = ENV["CAPYBARA_HOST"]

# Set the time (in seconds) Capybara should wait for elements to appear on the page
Capybara.default_max_wait_time = 15
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com"

class CapybaraDriverRegistrar
  # register a Selenium driver for the given browser to run on the localhost
  def self.register_selenium_driver(browser)
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => browser)
    end
  end

end
# Register various Selenium drivers
#CapybaraDriverRegistrar.register_selenium_driver(:internet_explorer)
#CapybaraDriverRegistrar.register_selenium_driver(:firefox)
CapybaraDriverRegistrar.register_selenium_driver(:chrome)
Capybara.run_server = false
#World(Capybara)

