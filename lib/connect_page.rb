class ConnectPage
  def initialize(browser)
    @browser = browser
  end

  def visit_dev
    @browser.goto 'http://connect-dev.nhncorp.com/'
  end

  def visit_prod
    @browser.goto 'http://connect.nhncorp.com/'
  end

  def login(userId, userPw)
    idField = @browser.text_field(:id, 'user_id')
    pwField = @browser.text_field(:id, 'user_pw')
    b = @browser.button(:class, 'btn_login')

    idField.set userId
    pwField.set userPw
    b.click()
  end

  def verify(text)
    @browser.div(:id => 'content').wait_until_present
    (@browser.text.include? text).should == true
  end
end
