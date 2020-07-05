require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

case ENV["BROWSER"]
when "firefox"
    @driver = :selenium_headless
    puts "Utilizando o Navegador Firefox em Headless"
when "chrome"
    @driver = :selenium_chrome_headless
    puts "Utilizando o Navegador Chrome em Headless"
else
    puts 'Invalid Browser'
end

Capybara.configure do |config|
    config.default_driver = @driver 
    config.default_max_wait_time = 12
end