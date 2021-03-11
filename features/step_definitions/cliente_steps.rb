Given("I open root page") do
    visit "/login"
    expect(page).to have_content('New cliente')
end
When("I create an cliente with cpf {string} and nome {string} and telefone {string}") do |cpf, nome, telefone|
    fill.in 'cliente[cpf]', :with => cpf
    fill.in 'cliente[nome]', :with => nome
    fill.in 'cliente[telefone]', :with => telefone
end
When("I click create cliente")  do 
    clik_button 'submit'
end
Then("I see the cliente with cpf {string} is properly created") do |cpf|
    expect(page).to have_content(cpf)
end 