require 'rspec'
require 'cucumber'
require	'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'faker'

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
Capybara.page.driver.browser.manage.window.maximize

ENV['ENV'] = 'M' unless ENV.key?'ENV'
MASSA = YAML.load_file('./fixtures/default_data.yml')[ENV['ENV']]
