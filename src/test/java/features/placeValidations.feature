Feature: Validating Place API's

  @AddPlace @Regression
  Scenario Outline: Verify if Place is being Succesfully added using AddPlaceAPI
    Given Add Place Payload with "<name>"  "<language>" "<address>"
    When user calls "AddPlaceAPI" with "POST" http request
    Then the API call got success with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP"
    And verify place_Id created maps to "<name>" using "getPlaceAPI"

    Examples:
      | name   | language | address |
      | sumant | English  | Berlin  |

  @UpdatePlace @Regression
  Scenario Outline: Verify if Place is being Succesfully updated using updatePlaceAPI
    Given Update Place Payload with "<address>"
    When user calls "updatePlaceAPI" with "PUT" http request
    Then the API call got success with status code 200
    And "msg" in response body is "Address successfully updated"

    Examples:
    | address |
    | Munich  |

  @GetPlace @Regression
  Scenario: Verify Get Place functionality is working
    Given GetPlace Payload
    When user calls "getPlaceAPI" with "GET" http request
    Then the API call got success with status code 200

  @DeletePlace @Regression
  Scenario: Verify if Delete Place functionality is working
    Given DeletePlace Payload
    When user calls "deletePlaceAPI" with "POST" http request
    Then the API call got success with status code 200
    And "status" in response body is "OK"


	

	
	
	
	
	
	

	
	
	