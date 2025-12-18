# Flutter Base Project - AI Context

This project is a reusable base Flutter application designed with a robust architecture and essential integrations.

## Architecture: MVVM + Repository Pattern

The project follows a strict separation of concerns using the MVVM pattern combined with Repositories.

### Folder Structure (`lib/`)

- **`core/`**: Infrastructure and universally shared logic.
  - `network/`: Dio client configuration.
  - `router/`: GoRouter configuration.
  - `services/`: Abstracted services (Database, etc.).
  - `theme/`: App theming.
  - `utils/`: Helpers (Logger, extensions).
- **`features/`**: Feature-specific code.
  - `[feature_name]/`
    - `data/`:
      - `models/`: Data models (Freezed, JsonSerializable).
      - `repositories/`: Implementations of repositories.
    - `presentation/`
      - `providers/`: State management (Riverpod ViewModels/Providers).
      - `widgets/`: Feature-specific Reusable widgets.
      - `views/`: Screens/Pages.
- **`shared/`**: Common widgets and providers used across features.

## Key Libraries

- **State Management**: `flutter_riverpod`
- **Routing**: `go_router`
- **Networking**: `dio`
- **Database**: abstract `DatabaseService` (implementations for Stub/Supabase/Firebase)
- **Utils**: `logger`, `dartx`
- **Code Generation**: `freezed`, `json_serializable`

## Coding Standards

- **Linting**: Strict rules via `very_good_analysis`.
- **Async**: centralized error handling in Repositories/Services.
- **Models**: Always use `freezed` for immutable data models.

## Setup

- **Run**: `flutter run`
- **Generate Code**: `flutter pub run build_runner build --delete-conflicting-outputs`
