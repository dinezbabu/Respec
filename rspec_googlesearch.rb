require 'selenium-webdriver'
require 'rspec'


describe "Admin Signin Scenario" do
	before (:each) do
		@driver = Selenium::WebDriver.for :firefox
		@base_url="http://www.google.com/"
		@driver.manage.window.maximize
		@driver.manage.timeouts.implicit_wait=60
	end	



def wait_for(seconds=50)
Selenium::WebDriver::Wait.new(:timeout=>seconds).until {yield}
end

context "Sign in With Valid Date" do
	it "User Signed in sucessfully" do
		@driver.get(@base_url + "/")
		sleep 10
		# @driver.find_element(:name,"input[name='q']").click
		@driver.find_element(:name,"q").click
		@driver.find_element(:name,"q").clear
		@driver.find_element(:name,"q").send_keys "Dinesh Babu"
		@driver.find_element(:name,"q").send_keys :return
		@driver.quit
	end
end
end