Feature: Put user on swagger

  Scenario: Put a user
    Given url "https://petstore.swagger.io/v2/user/" + "pablo"
    And request { "id": 0, "username": "nickname", "firstName": "sara", "lastName": "bonilla", "email": "test@test.com", "password": "123456", "phone": "0987456123", "userStatus": 0 }
    When method put
    Then status 200
    And match $.username == "pablo"
