@javascript
Feature: Playing area
  As a player
  I want to select a game of Blackjack
  So that I can start the game.

  Background:
    Given I am a player
    When I visit the "High Rollers" game table
    And I click PLAY!
  
  Scenario: Selecting PLAY!
    Then I will see the playing area
    And I will see the control bar

  Scenario: Viewing the playing area
    When I view the contents of the playing area
    Then The playing area should contain a "player icon"
    And The playing area should contain my "current chip count"
    And The playing area should contain a "Dealer card area"
    And The playing area should contain my "player card area"

  Scenario: Viewing the control bar
    When I view the contents of the control bar
    Then The control bar should contain my "current bet"
    And The control bar should contain a "Hit" button
    And The control bar should contain a "Stand" button
    And The control bar should contain a "Double Down" button
    
