# Experian Challenge

![Flutter Version](https://badgen.net/badge/Flutter/3.24.3)

## Technologies Used

This mobile application utilizes the following technologies:

- **Flutter (3.24.3)**
- **Clean Architecture**
- **Dependency Injection**
- **Route Management**
- **State Management**
- **Data Persistence**
- **API Communication**

## Architecture Overview (Clean Architecture)

The project follows the Clean Architecture principles, with the following directory structure:

- `data`: Handles external communications and data sources (e.g., API).
- `di`: Manages dependency injection.
- `domain`: Contains business logic and entities.
- `env`: Environment configuration and setup.
- `infra`: Provides external library implementations.
- `presentation`: Contains UI logic and state management.
  - `controllers`: Manages screen state and actions.
- `ui`: The view layer of the app.

### Principles Followed

- **SOLID**: Ensures clean and maintainable code.
- **KISS**: Keep It Simple, Stupid – for simplicity.
- **DRY**: Don't Repeat Yourself – for code reusability.

## Installation

Follow these steps to set up the project:

1. Install [Flutter](https://flutter.dev/docs/get-started/install) if you haven't already.
2. Ensure you have **Flutter 3.24.3** installed.
3. Clone this repository and navigate to the project root.
4. Run `flutter pub get` to install dependencies.
5. Use the following command to run the app with the correct environment configuration:

   ```bash
   flutter run --dart-define-from-file=lib/env/.env
   ```

## Running Tests

You can run unit and integration tests using the following commands:

- **Unit Tests**:

  ```bash
  flutter test test/
  ```

- **Integration Tests**:
  ```bash
  flutter test --dart-define-from-file=lib/env/.env integration_test/
  ```

## Dependencies

- `crypto: ^3.0.5`
  - Used to ensure the security of sensitive data, such as when generating unique identifiers or hashing passwords.
- `cached_network_image: ^3.4.1`
  - Efficiently handled the loading and caching of images from the Marvel API, improving performance by reducing network requests and providing a smoother user experience.
- `dio: ^5.7.0`
  - Facilitated making HTTP requests to the Marvel API and handling responses. Its features, such as interceptors and error handling, were instrumental in ensuring reliable data fetching and error management.
- `get: ^4.6.6`
  Chosen as the primary state management solution due to its simplicity, performance, and my familiarity with the library. Get offered a streamlined approach to managing application state, navigation, and dependency injection, leading to a more maintainable and scalable codebase.

##

> _Firebase Analytics is a valuable tool for gathering user insights. Although native iOS integration was not feasible for this iteration due to hardware constraints, it remains a high priority for future development. We plan to revisit this feature in subsequent releases._
