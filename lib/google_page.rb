class GooglePage
  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto 'http://www.google.com/'
  end

  def query(keyword)
    searchField = @browser.text_field(:name, 'q')
    searchField.set keyword
  end

  def submit
    searchButton = @browser.button(:name, 'btnG')
    searchButton.click
  end

  def verify(text)
    @browser.div(:id => 'resultStats').wait_until_present
    (@browser.text.include? text).should == true
  end
end
