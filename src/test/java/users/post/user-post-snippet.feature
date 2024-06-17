Feature: Reusable scenarios for post a user

  @Create
  Scenario:
    Given url "https://petstore.swagger.io/v2/user"
    And request { "id": 6, "username": "user6", "firstName": "jose", "lastName": "pancho", "email": "prueba@mail.com", "password": "123456", "phone": "0985217485", "userStatus": 0 }
    When method post
    Then status 200
    And def contactId = $.id

  