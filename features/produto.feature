Feature: Produto
    As a user 
    I want to add, remove, show, and update a produto
    So that i do not need to do it manually  

    Scenario: creating new produto correctly

        Given I am logged_in
        And I am at create produto page
        When I create a produto with descricao "blusa" and quantidade "2" and categoria "adulto" and subcategoria "feminina" and valor "19.90" and tamanho "P"
        When I click create produto
        Then I see a message "Product was successfully created."
    
    Scenario: creating new produto without description

        Given I am logged_in
        And I am at create produto page
        When I create a produto with descricao "" and quantidade "2" and categoria "adulto" and subcategoria "feminina" and valor "19.90" and tamanho "P"
        When I click create produto
        Then I see a message "Descricao can't be blank"

    Scenario: editing produto correctly

        Given I am logged_in
        And I am at create produto page
        When I create a produto with descricao "blusa" and quantidade "2" and categoria "adulto" and subcategoria "feminina" and valor "19.90" and tamanho "P"
        And I click create produto
        And I am at edit produto page
        And I edit a produto with descricao "Camisa" and quantidade "2" and categoria "adulto" and subcategoria "feminina" and valor "19.90" and tamanho "P"
        And I click edit produto
        Then I see a message "Product was successfully updated."

    Scenario: editing produto with not a number valor

        Given I am logged_in
        And I am at create produto page
        When I create a produto with descricao "blusa" and quantidade "2" and categoria "adulto" and subcategoria "feminina" and valor "19.90" and tamanho "P"
        And I click create produto
        And I am at edit produto page
        And I edit a produto with descricao "Camisa" and quantidade "3" and categoria "adulto" and subcategoria "feminina" and valor "aaa" and tamanho "P"
        And I click edit produto
        Then I see a message "Valor is not a number"
    
    Scenario: editing produto without categoria

        Given I am logged_in
        And I am at create produto page
        When I create a produto with descricao "blusa" and quantidade "2" and categoria "adulto" and subcategoria "feminina" and valor "19.90" and tamanho "P"
        And I click create produto
        And I am at edit produto page
        And I edit a produto with descricao "Camisa" and quantidade "2" and categoria "" and subcategoria "feminina" and valor "19.90" and tamanho "P"
        And I click edit produto
        Then I see a message "Categoria can't be blank"
