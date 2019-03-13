Feature: Delete Invitation
  In order to allow a player to delete an invitation previously sended to another player
  As an user
  I want to delete invitations

  Scenario: Delete owned invitation
    Given I login as "user" with password "password"
    And There is an invitation with message "asd"
    When I delete the previously created invitation
    Then The response code is 204
    And There are 0 invitations created


  Scenario: Delete invitation from other user
    Given I login as "user" with password "password"
    And There is a user with username "user2"
    And There is an invitation with message "asd" created by "user2"
    When I delete the previously created invitation
    Then The response code is 401
    And There are 1 invitations created