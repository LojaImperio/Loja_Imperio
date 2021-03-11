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

Given("I am at edit produto page") do
    click_link 'Edit'
end
When("I edit a produto with descricao {string} and quantidade {string} and categoria {string} and subcategoria {string} and valor {string} and tamanho {string}") do |descricao, quantidade, categoria, subcategoria, valor, tamanho|
    fill_in 'produto[descricao]', :with => descricao
    fill_in 'produto[quantidade]', :with => quantidade
    fill_in 'produto[categoria]', :with => categoria
    fill_in 'produto[subcategoria]', :with => subcategoria
    fill_in 'produto[valor]', :with => valor
    fill_in 'produto[tamanho]', :with => tamanho
end
When("I click edit produto")  do 
    click_button 'submit'
end