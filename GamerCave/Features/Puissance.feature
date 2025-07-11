Feature: Puissance

A short summary of the feature

﻿Feature: Puissance4
	As a connect4 player
    I want to see the results of the game
    So that I can know who won

Scenario: Row
	Given a new game that looks like
        | 1a | 1b | 1c | 1d | 1e | 1f |
        | 2a | 2b | 2c | 2d | 2e | 2f |
        | 3a | 3b | 3c | 3d | 3e | 3f |
        | 4a | 4b | 4c | 4d | 4e | 4f |
        | 5a | 5b | 5c | 5d | 5e | 5f |
        | 6a | 6b | 6c | 6d | 6e | 6f |
    When we have the following sequence of moves
        | X | O |
        | 6a | 5a |
        | 6b | 5b |
        | 6c | 5c |
        | 6d |  |        
    Then player X is declared the winner

Scenario: Column
	Given a new game that looks like
        | 1a | 1b | 1c | 1d | 1e | 1f |
        | 2a | 2b | 2c | 2d | 2e | 2f |
        | 3a | 3b | 3c | 3d | 3e | 3f |
        | 4a | 4b | 4c | 4d | 4e | 4f |
        | 5a | 5b | 5c | 5d | 5e | 5f |
        | 6a | 6b | 6c | 6d | 6e | 6f |
    When we have the following sequence of moves
        | X | O |
        | 6a | 6b |
        | 5a | 5b |
        | 4a | 4b |
        | 3a |  |        
    Then player X is declared the winner

Scenario: Diagonal
	Given a new game that looks like
        | 1a | 1b | 1c | 1d | 1e | 1f |
        | 2a | 2b | 2c | 2d | 2e | 2f |
        | 3a | 3b | 3c | 3d | 3e | 3f |
        | 4a | 4b | 4c | 4d | 4e | 4f |
        | 5a | 5b | 5c | 5d | 5e | 5f |
        | 6a | 6b | 6c | 6d | 6e | 6f |
    When we have the following sequence of moves
        | X | O |
        | 6a | 6b |
        | 5b | 6d |
        | 6c | 5c |
        | 4c | 6d |
        | 5d | 4d |
        | 3d |  |
    Then player X is declared the winner

Scenario: Draw
    Given a new game that looks like
        | 1a | 1b | 1c | 1d | 1e | 1f |
        | 2a | 2b | 2c | 2d | 2e | 2f |
        | 3a | 3b | 3c | 3d | 3e | 3f |
        | 4a | 4b | 4c | 4d | 4e | 4f |
        | 5a | 5b | 5c | 5d | 5e | 5f |
        | 6a | 6b | 6c | 6d | 6e | 6f |
    When we have the following sequence of moves
        | X | O |
        | 6a | 6c |
        | 6b | 6d | 
        | 6e | 5a |
        | 6f | 5b |
        | 5c | 5e |
        | 5d | 5f |
        | 4a | 4c |
        | 4b | 4d | 
        | 4e | 3a |
        | 4f | 3b |
        | 3c | 3e |
        | 3d | 3f |
        | 2a | 2c |
        | 2b | 2d | 
        | 2e | 1a |
        | 2f | 1b |
        | 1c | 1e |
        | 1d | 1f |
    Then a draw is declared