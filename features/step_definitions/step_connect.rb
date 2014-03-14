require 'connect_page'
require 'pry'

Given(/^I navigate to connect$/) do
  @connect = ConnectPage.new(@browser)
  @connect.visit_dev()
end

Given(/^I log in with id of "(.*?)" and password of "(.*?)"$/) do |arg1, arg2|
  @connect.login(arg1, arg2)
end

Then(/^"(.*?)" should be present$/) do |arg1|
  binding.pry
  @connect.verify(arg1)
end
