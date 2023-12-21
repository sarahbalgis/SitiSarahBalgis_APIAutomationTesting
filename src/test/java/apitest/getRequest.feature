Feature: get request

  Background: Setup Data
    Given url "https://petstore.swagger.io/v2"
    And print "========= Ini test Get Data ========"
    * string jsonSchemaExpected = read('file:src/test/java/apitest/schema/schema.json')

  Scenario: Get User
    * def username = 'inihanyatest'
    When path '/user/'+username
    And method get
    Then status 200
    And print response