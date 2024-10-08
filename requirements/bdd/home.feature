Feature: Home Screen

Scenario: Home screen should display a list of Marvel heroes with infinity scrolling
   Given the user is on the home screen
   Then the user should see a list of Marvel heroes
   And the list should be scrollable
   And the list should have infinity scrolling

Scenario: Home screen should display featured characters
   Given the user is on the home screen
   Then the user should see a section with featured characters

Scenario: Home screen should have a search bar
   Given the user is on the home screen
   Then the user should see a search bar
   When the user enters a search term in the search bar
   Then the list of heroes should be filtered by the search term

Scenario: Click on a character
    Given the user is on the characters list screen
    When the user clicks on the "Iron Man" character
    Then the system should display the "Iron Man" character details screen