Feature: PetStore API challenge

  Scenario: Full pet lifecycle
    * url 'https://petstore.swagger.io/v2'
    * def allData = read('classpath:data/pet-data.json')
    * def petData = allData.successfulPetFlow

    Given path 'pet'
    And request
    """
    {
      "id": #(petData.id),
      "category": {
        "id": 1,
        "name": "dogs"
      },
      "name": #(petData.name),
      "photoUrls": ["https://example.com/photo1.jpg"],
      "tags": [
        {
          "id": 1,
          "name": "friendly"
        }
      ],
      "status": #(petData.status)
    }
    """
    When method post
    Then status 200
    And match response.id == petData.id
    And match response.name == petData.name
    And match response.status == petData.status

    Given path 'pet', petData.id
    When method get
    Then status 200
    And match response.id == petData.id
    And match response.name == petData.name

    Given path 'pet'
    And request
    """
    {
      "id": #(petData.id),
      "category": {
        "id": 1,
        "name": "dogs"
      },
      "name": #(petData.updatedName),
      "photoUrls": ["https://example.com/photo1.jpg"],
      "tags": [
        {
          "id": 1,
          "name": "friendly"
        }
      ],
      "status": #(petData.updatedStatus)
    }
    """
    When method put
    Then status 200
    And match response.name == petData.updatedName
    And match response.status == petData.updatedStatus

    Given path 'pet', 'findByStatus'
    And param status = petData.updatedStatus
    When method get
    Then status 200
    And match each response[*].status == petData.updatedStatus