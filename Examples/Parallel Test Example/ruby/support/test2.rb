require 'rubygems'
require "selenium-webdriver"

@driver = Selenium::WebDriver.for :firefox

def wait_for_ajax
  begin
    puts "Waiting for AJAX to complete"
    sleep 0.3
  end while (@driver.execute_script("return jQuery.active") != 0)
    puts "\n\nAJAX loaded!!\n\n"
end


begin
  @driver.navigate.to "http://www.google.com/"
  sleep 10
ensure
  @driver.quit
end
