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

Scenario: Verificar a obtenção de episódios paginados
    Given path 'episode'
    And param page = 2
    When method get
    Then status 200
    And match response.info.next == 'https://rickandmortyapi.com/api/episode?page=3'


Scenario: Verificar a obtenção de informações de um episódio que não existe (Caso negativo)
    Given path 'episode/500'
    When method get
    Then status 404





    