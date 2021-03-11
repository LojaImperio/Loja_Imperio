Given ("I am logged_in") do 
    visit "/signup"
    fill_in 'user[email]', :with => "patricia@email.com"
    fill_in 'user[password]', :with => "123456"
    fill_in 'user[password_confirmation]', :with => "123456"
    click_button 'submit'
    visit "/login"
    fill_in 'email', :with => "patricia@email.com"
    fill_in 'password', :with => "123456"
    click_button 'Login'
end
Given("I am at create cliente page") do
    click_link 'New customer'
end
When("I create a cliente with cpf {string} and nome {string} and telefone {string}") do |cpf, nome, telefone|
    fill_in 'cliente[cpf]', :with => cpf
    fill_in 'cliente[nome]', :with => nome
    fill_in 'cliente[telefone]', :with => telefone
end
When("I click create cliente")  do 
    click_button 'submit'
end
Then("I see a message {string}") do |message|
    expect(page).to have_content(message)
end 