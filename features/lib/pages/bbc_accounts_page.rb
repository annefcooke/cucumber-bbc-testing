class BBCAccountsPage
  include Capybara::DSL

  def visit_accounts_page
    visit '/signin'
  end

  def input_username name
    fill_in 'user-identifier-input', with: name
  end

  def input_password password
    fill_in 'password-input', with: password
  end

  def click_submit
    click_on 'submit-button'
  end

  def signed_in?
    find_link('Your account').visible?
  end

  def incorrect_pw_message
    find('form-message__text', text: "Uh oh, that password").visible?
  end

  def click_register
    click_link 'Register now'
  end

  def confirm_over_13
    click_link '13 or over'
  end

  def enter_dob day, month, year
    fill_in 'day-input', with: day
    fill_in 'month-input', with: month
    fill_in 'year-input', with: year
  end

  def submit_dob
    click_on 'submit-button'
  end

  def enter_email email
    fill_in USERNAME_FIELD, with: email
  end

  def enter_password password
    fill_in PASSWORD_FIELD, with: password
  end

  def get_password_error_message
    find(:id, 'form-message-password').text
  end

  def clear_password
    fill_in 'password-input', with: ""
    sleep 1
  end

  def password_field
    find_field 'Password'

  end

  def incorrect_username_message
    find(:id, 'form-message-username').text
  end

end
