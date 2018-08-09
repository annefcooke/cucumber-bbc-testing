class BBCHomePage

  include Capybara::DSL

  def visit_home_page
    visit '/'
  end

  def click_sign_in
    click_link 'idcta-link'
  end

end
