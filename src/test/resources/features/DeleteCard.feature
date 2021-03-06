Feature: Delete Card
  In order to delete a card
  As an Admin
  I want to delete a previously created card

  Scenario: Delete a card as an admin
    Given I login as "admin" with password "password"
    And There is a game with price 10.0 and id 1
    And There is a card with id 1 associated to the game with id 1 created by player "user"
    When I delete a card with id 1
    Then The response code is 204
    And The card with id 1 does not exist

  Scenario: Delete a card as user
    Given I login as "user" with password "password"
    And There is a game with price 10.0 and id 1
    And There is a card with id 1 associated to the game with id 1 created by player "user"
    When I delete a card with id 1
    Then The response code is 403
    And The card with id 1 exists

  Scenario: Delete a card while not logged in
    Given I login as "user" with password "password"
    And There is a game with price 10.0 and id 1
    And There is a card with id 1 associated to the game with id 1 created by player "user"
    When I delete a card with id 1
    Then The response code is 403
    And The card with id 1 exists