@javascript
Feature: Game Table
  As a player
  I want to view a game table
  So that I can begin to play a game.

  Background:
    Given I am a player
    When I go to the Blackjack app
    And I visit the Lobby

  Scenario: Selecting the "High Rollers" game table
    When I select the "High Rollers" table
    Then I should be directed to the "High Rollers" table
    And I should see the table name "High Rollers" Table
    And I should see a "Back to Lobby" link
    And I should see a "Play" button
    And I should see a "Dealer" avatar
    
  Scenario: Selecting the "Intermediates" game table
    When I select the "Intermediates" table
    Then I should be directed to the "Intermediates" table
    And I should see the table name "Intermediates" Table
    And I should see a "Back to Lobby" link
    And I should see a "Play" button
    And I should see a "Dealer" avatar
    
  Scenario: Selecting the "Beginners" game table
    When I select the "Beginners" table
    Then I should be directed to the "Beginners" table
    And I should see the table name "Beginners" Table
    And I should see a "Back to Lobby" link
    And I should see a "Play" button
    And I should see a "Dealer" avatar

  Scenario: Viewing the "High Rollers" User Statistics Widget
    When I visit the "High Rollers" game table
    And I view the User Statistics Widget
    Then I should see an aside box
    And It should contain my "name"
    And It should contain my "avatar"
    And It should contain my "chip count"
    And It should contain my "level"
    And It should contain an Edit link

  Scenario: Viewing the "Intermediates" User Statistics Widget
    When I visit the "Intermediates" game table
    And I view the User Statistics Widget
    Then I should see an aside box
    And It should contain my "name"
    And It should contain my "avatar"
    And It should contain my "chip count"
    And It should contain my "level"
    And It should contain an Edit link

  Scenario: Viewing the "Beginners" User Statistics Widget
    When I visit the "Beginners" game table
    And I view the User Statistics Widget
    Then I should see an aside box
    And It should contain my "name"
    And It should contain my "avatar"
    And It should contain my "chip count"
    And It should contain my "level"
    And It should contain an Edit link
    
