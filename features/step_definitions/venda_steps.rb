Given("I create a produto") do
    click_link 'New product'
    fill_in 'produto[descricao]', :with => "Camisa"
    fill_in 'produto[quantidade]', :with => "7"
    fill_in 'produto[categoria]', :with => "Infatil"
    fill_in 'produto[subcategoria]', :with => "Masculina"
    fill_in 'produto[valor]', :with => "39.90"
    fill_in 'produto[tamanho]', :with => "G"
    click_button 'submit'
    click_link 'Back'
    click_link 'Start'
end
Given("I create a cliente") do
    click_link 'New customer'
    fill_in 'cliente[cpf]', :with => "12345678985"
    fill_in 'cliente[nome]', :with => "Pedro"
    fill_in 'cliente[telefone]', :with => "999601244"
    click_button 'submit'
    click_link 'Back'
    click_link 'Start'
end
Given("I am at create venda page") do
    click_link 'New sale'
end
When("I create a venda with valorTotal {string} and produto_id {string} and cliente_id {string}") do |valorTotal, produto_id, cliente_id|
    fill_in 'venda[valorTotal]', :with => valorTotal
    fill_in 'venda[produto_id]', :with => produto_id
    fill_in 'venda[cliente_id]', :with => cliente_id
end
When("I click create venda")  do 
    click_button 'submit'
end
Given("I am at edit venda page") do
    click_link 'Edit'
end
When("I edit a venda with valorTotal {string} and produto_id {string} and cliente_id {string}") do |valorTotal, produto_id, cliente_id|
    fill_in 'venda[valorTotal]', :with => valorTotal
    fill_in 'venda[produto_id]', :with => produto_id
    fill_in 'venda[cliente_id]', :with => cliente_id
end
When("I click edit venda")  do 
    click_button 'submit'
end