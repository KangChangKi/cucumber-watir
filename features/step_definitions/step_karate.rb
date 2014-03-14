require 'google_page'

Given(/^I navigate to Google$/) do
  @google = GooglePage.new(@browser)
  @google.visit()
end

When(/^I enter (\w+) into the search field$/) do | karate |
  @google.query(karate)
  @google.submit()
end

Then(/^the text (\w+) should be present$/) do | surname |
  @google.verify(surname)
end

