Feature: Splash Screen

Scenario: Display splash screen
  Given the app is launched
  When the splash screen is displayed
  Then the Marvel logo should be visible in the center of the screen

Scenario: Splash screen display time
  Given the app is launched
  When the splash screen is displayed
  Then the splash screen should be displayed for a maximum of 2 seconds

Scenario: Transition to main screen
  Given the app is launched
  Then the splash screen should be hidden and the main screen should be displayed after 2 seconds