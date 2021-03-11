Feature: Venda
    As a user 
    I want to add, remove, show, and update a venda
    So that i do not need to do it manually  
    
    Scenario: creating new venda correctly

        Given I am logged_in
        And I create a produto
        And I create a cliente 
        And I am at create venda page
        When I create a venda with valorTotal "99.99" and produto_id "1" and cliente_id "1"
        When I click create venda
        Then I see a message "SALE was successfully created." 

    Scenario: creating new venda without valor

        Given I am logged_in
        And I create a produto
        And I create a cliente 
        And I am at create venda page
        When I create a venda with valorTotal "" and produto_id "1" and cliente_id "1"
        When I click create venda
        Then I see a message "Valortotal is not a number" 

    Scenario: editing venda correctly

        Given I am logged_in
        And I create a produto
        And I create a cliente 
        And I am at create venda page
        And I create a venda with valorTotal "99.99" and produto_id "1" and cliente_id "1"
        And I click create venda
        And I am at edit venda page
        And I edit a venda with valorTotal "89.99" and produto_id "1" and cliente_id "1"
        And I click edit venda
        Then I see a message "SALE was successfully updated."


    Scenario: editing venda without valor

        Given I am logged_in
        And I create a produto
        And I create a cliente 
        And I am at create venda page
        And I create a venda with valorTotal "99.99" and produto_id "1" and cliente_id "1"
        And I click create venda
        And I am at edit venda page
        And I edit a venda with valorTotal "" and produto_id "1" and cliente_id "1"
        And I click edit venda
        Then I see a message "Valortotal is not a number"
    
    Scenario: editing venda without cliente

        Given I am logged_in
        And I create a produto
        And I create a cliente 
        And I am at create venda page
        And I create a venda with valorTotal "99.99" and produto_id "1" and cliente_id "1"
        And I click create venda
        And I am at edit venda page
        And I edit a venda with valorTotal "99.99" and produto_id "1" and cliente_id ""
        And I click edit venda
        Then I see a message "Cliente must exist"

    Scenario: editing venda without produto

        Given I am logged_in
        And I create a produto
        And I create a cliente 
        And I am at create venda page
        And I create a venda with valorTotal "99.99" and produto_id "1" and cliente_id "1"
        And I click create venda
        And I am at edit venda page
        And I edit a venda with valorTotal "99.99" and produto_id "" and cliente_id "1"
        And I click edit venda
        Then I see a message "Produto must exist"