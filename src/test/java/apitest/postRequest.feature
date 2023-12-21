Feature: Post test

  Background:
    Given url "https://petstore.swagger.io/v2"
    And print "------- ini adalah test post"
    * def body = { "id": "0", "username": "inihanyatest", "firstName": "test", "lastName": "test", "email": "test@gmail.com", "password": "test", "phone": "0899294891", "userStatus": "0"}
    * def headerRegress = { Accept: 'application/json', 'Content-Type': "application/json"}

  @post @test
  Scenario: Regress test post
    When path "/user"
    And method post
    And headers headerRegress
    And request body
    Then status 200
    And print response