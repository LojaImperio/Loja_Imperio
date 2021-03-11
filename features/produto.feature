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


