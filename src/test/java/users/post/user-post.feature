Feature: Post user on swagger

  Background:
    * url "https://petstore.swagger.io/v2/user"
    #* path "user"
    #* def var = { "id": 5, "username": "user5", "firstName": "jose", "lastName": "pancho", "email": "prueba@mail.com", "password": "123456", "phone": "0985217485", "userStatus": 0 }
    * request { "id": #(id), "username": "#(username)", "firstName": "#(firstName)", "lastName": "#(lastName)", "email": "#(lastName)", "password": "#(password)", "phone": "#(phone)", "userStatus": #(userStatus) }

  Scenario Outline: Post a user
    When method post
    Then status 200

    Examples:
      | id | username | firstName | lastName | email     | password | phone      | userStatus |
      | 2  | user2    | pancho    | jose     | as@a.com  | 123456   | 0987654321 | 0
      | 3  | user3    | lucho     | luis     | ls@a.com  | 123456   | 0987654321 | 0
      | 4  | user4    | Pancho    | Francis  | fds@a.com | 123456   | 0987654321 | 0