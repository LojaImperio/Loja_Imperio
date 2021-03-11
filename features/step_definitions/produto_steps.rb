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
Given("I am at create produto page") do
    click_link 'New product'
end
When("I create a produto with descricao {string} and quantidade {string} and categoria {string} and subcategoria {string} and valor {string} and tamanho {string}") do |descricao, quantidade, categoria, subcategoria, valor, tamanho|
    fill_in 'produto[descricao]', :with => descricao
    fill_in 'produto[quantidade]', :with => quantidade
    fill_in 'produto[categoria]', :with => categoria
    fill_in 'produto[subcategoria]', :with => subcategoria
    fill_in 'produto[valor]', :with => valor
    fill_in 'produto[tamanho]', :with => tamanho
end
When("I click create produto")  do 
    click_button 'submit'
end
Then("I see a message {string}") do |message|
    expect(page).to have_content(message)
end 