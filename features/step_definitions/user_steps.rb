Given ("I am at create user page") do 
    visit "/signup"
end 
When ("I create an user with email {string} and password {string} and password confirmation {string} ") do |email, password, password_confirmation|
    fill.in 'user[email]', :with => email
    fill.in 'user[password]', :with => password
    fill.in 'user[password_confirmation]', :with => password_confirmation
end
When("I click create user")  do 
    clik_button 'submit'
end
Then("I see a message {string}") do |message|
    expect(page).to have_content(message)
end