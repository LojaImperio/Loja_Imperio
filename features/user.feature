Feature: User
    As a guest 
    I want to add a user
    So that i do not need to do it manually 

    Scenario: creating new user correctly

    Given I am at create user page
    When I create an user with email "ana@email.com" and password "123456" and password confirmation "123456"
    Then I see the user with email "ana@email.com" is properly created


