@javascript
Feature: Lobby
  As a player
  I want to see my user stats and a selection of game tables
  So that I can choose which game to play.

  Background:
    Given I am a player
    When I go to the Blackjack app
    
  Scenario: Viewing the game lobby when I enter the app
    Then I should see the Lobby

  Scenario: Viewing the game tables list
    When I view the game tables list
    Then I should see a link to "High Rollers" Table
    And I should see a link to "Intermediates" Table
    And I should see a link to "Beginners" Table

  Scenario: Viewing the User Statistics Widget
    When I view the User Statistics Widget
    Then I should see an aside box
    
  Scenario: Viewing the Stats in the User Statistics Widget
    When I view the contents of the User Statistics Widget
    Then The widget should contain my "name"
    And The widget should contain my "avatar"
    And The widget should contain my "chip count"
    And The widget should contain my "level"
    And The widget should contain an Edit link
