Feature: Character Detail Screen

Scenario: Load character details
  Given the user is on the character details screen for "Black Widow"
  When the screen is loaded
  Then the character's name should be displayed as "Black Widow"
  And the character's image should be displayed
  And the character's biography should be displayed

Scenario: Check for accurate information
  Given the user is on the character's details screen
  When the user verifies the character's biography
  Then the information should be accurate and consistent with Marvel's official sources

Scenario: Navigate back to the character list
  Given the user is on the character details screen
  When the user clicks the back button
  Then the user should be redirected to the characters list screen