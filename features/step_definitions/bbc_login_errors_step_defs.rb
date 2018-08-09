Given("I am on the BBC home page") do
  bbc_home_page.visit_home_page
end

Given("I move to the sign in page") do
  bbc_home_page.click_sign_in
end

When("I proceed to register") do
  bbc_accounts_page.click_register
  bbc_accounts_page.confirm_over_13
end

When("I input my DOB") do
  bbc_accounts_page.enter_dob '6', '12', '1989'
  bbc_accounts_page.submit_dob
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_accounts_page.input_username 'kjhni21@gmail.com'
  bbc_accounts_page.input_password password
  bbc_accounts_page.password_field.send_keys :tab
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(bbc_accounts_page.get_password_error_message).to eq error 
end
