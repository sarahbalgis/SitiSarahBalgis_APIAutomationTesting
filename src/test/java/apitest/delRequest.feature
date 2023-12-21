Feature: Delete request regress

  Background: Preparation
    Given url "https://petstore.swagger.io/v2"
    And print "This is Delete step preparation"

  @test
  Scenario: Test Delete data
    * def username = 'inihanyatest'
    When path '/user/'+username
    And method delete
    Then status 200
    And print response