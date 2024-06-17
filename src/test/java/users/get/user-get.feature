Feature: Get user on swagger

  Background:
    * url "https://petstore.swagger.io/v2/user/"
    * path "user1"

  Scenario: Get a user
    When method get
    Then status 200