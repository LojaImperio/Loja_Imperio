Given ("I am at create user page") do 
    visit "/signup"
end 
When ("I create an user with email {string} and password {string} and password confirmation {string}") do |email, password, password_confirmation|
    fill_in 'user[email]', :with => email
    fill_in 'user[password]', :with => password
    fill_in 'user[password_confirmation]', :with => password_confirmation
end
When("I click create user")  do 
    click_button 'submit'
end