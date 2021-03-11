Feature: Cliente
    As a user 
    I want to add, remove, show, and update a cliente
    So that i do not need to do it manually 

    Scenario: creating new cliente correctly

        Given I am logged_in
        And I am at create cliente page
        When I create a cliente with cpf "12345678923" and nome "Ana" and telefone "999214578"
        When I click create cliente
        Then I see a message "Costumer was successfully created."