# Flutter Technical Challenge

## Overview

This challenge involves building a Flutter mobile application that consumes data from the Marvel API and displays it in a user-friendly interface, following the design provided in this [Figma link](https://www.figma.com/design/c3jdIlcXvsZ0swmQ2cAetx/Projeto-Marvel?node-id=0-1&node-type=canvas&t=RHYYxkwKn4jep8pv-0).

## Instructions

1. **Repository Creation:**

   - Create a public GitHub repository to host your project.
   - Share the repository link with us.

2. **Development:**

   - Adhere to the provided instructions, meeting both functional and technical requirements.

3. **Documentation:**
   - Include a `README.md` file for basic project documentation.
   - Explain how to install dependencies, configure the API key, run the application, and list the versions of software and libraries used.

## Web Service

- **Marvel API:** [https://developer.marvel.com/docs](https://developer.marvel.com/docs)
- **Account Creation:** [https://developer.marvel.com/account](https://developer.marvel.com/account)
- **API Key Generation:** [https://developer.marvel.com/account](https://developer.marvel.com/account)

  **Important:** Do not include your API key directly in the code.

## Functional Requirements

The application should be able to:

- Fetch a list of Marvel characters.
- Display a detailed screen for each character.
- Gracefully handle potential errors during API calls.

## Technical Requirements

- **Clean Architecture:** Implement this architectural pattern.
- **State Management:** Use a state management solution to separate presentation logic.
- **Unit Tests:** Include unit tests for the presentation and data source layers. High coverage is not mandatory; focus on demonstrating different unit testing approaches in Flutter.
- **Suggested Packages:** Feel free to use additional packages, but justify your choices in the `README.md`:
  - DIO
  - Flutter Modular
  - Mocktail
  - Bloc / Cubit / MobX / RiverPod (Explain your choice).

## Bonus: Native Code Integration

**Optional Activity:** Integrate Google Analytics into your application natively.

**Instructions:**

1. Create a `MethodChannel` for communication between Flutter and native code.
2. Set up Google Analytics on the native side of your app.
   - **iOS Documentation:** [https://developers.google.com/analytics/devguides/collection/ios](https://developers.google.com/analytics/devguides/collection/ios)
   - **Android Documentation:** [https://developers.google.com/analytics/devguides/collection/android](https://developers.google.com/analytics/devguides/collection/android)
3. Develop functions that directly utilize the native SDK, allowing Flutter to access these functionalities.

## Evaluation Criteria

- Code quality, organization, and readability.
- Low coupling between classes.
- Code componentization and reusability.
- Version control practices.
- Testability.

## Tips

- Apply SOLID, DRY, and KISS principles.
- Use semantic commit messages.
- Follow established Flutter conventions.
- Ensure the project is easy to set up and run.
- Consider using a linter for code style consistency.
