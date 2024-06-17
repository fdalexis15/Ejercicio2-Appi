Feature: Delete user on swagger

  Scenario: Delete a user
    * call read("../post/user-post-snippet.feature@Create")
    Given url "https://petstore.swagger.io/v2/user/" + contactId
    When method delete
    Then status 200
