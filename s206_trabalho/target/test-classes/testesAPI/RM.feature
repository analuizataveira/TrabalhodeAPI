Feature: Testando API Rick and Morty

Background:
    * url 'https://rickandmortyapi.com/api/'
  
  Scenario: Verificar a obtenção de todos os personagens
    Given path 'character'
    When method get
    Then status 200
    And match response.results == '#notnull'

Scenario: Verificar a obtenção de informações de um personagem que não existe (Caso negativo)
    Given path 'character/2000'
    When method get
    Then status 404

Scenario: Verificar o filtro de personagens por status
    Given path '/character'
    And param status = 'Alive'
    When method get
    Then status 200
    And match each response.results[*].status == 'Alive'





    