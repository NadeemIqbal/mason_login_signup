# Auth Screens Brick

A Flutter authentication screens brick with customizable options for login, signup, and forgot password screens.

## Quick Start

```bash
# Install the brick
mason add auth_screens

# Generate the auth screens
mason make auth_screens
```

## Features

- **Login Screen**
  - Customizable app bar
  - Brand image support
  - Forgot password option
  - Custom button text

- **Signup Screen**
  - Customizable app bar
  - Brand image support
  - Configurable fields:
    - Username (optional)
    - Email
    - Password
    - Phone (optional)
  - Custom button text

- **Forgot Password Screen**
  - Popup or full screen option
  - Custom button text

## Configuration Options

### Brand Image
- Show/hide brand image
- Custom image path
- Adjustable dimensions
- Custom fit and alignment
- Configurable margins and padding
- Background color and border radius

### Login Screen
- Show/hide app bar
- Show/hide forgot password option
- Custom login button text

### Signup Screen
- Show/hide app bar
- Enable/disable fields:
  - Username
  - Email
  - Password
  - Phone
- Custom signup button text

### Forgot Password
- Show as popup or full screen
- Custom reset password button text

## Project Structure

```
lib/
  ├── features/
  │   └── auth/
  │       ├── presentation/
  │       │   ├── screens/
  │       │   │   ├── login_screen.dart
  │       │   │   ├── signup_screen.dart
  │       │   │   └── forgot_password_screen.dart
  │       │   └── widgets/
  │       │       └── auth_form_field.dart
  │       └── domain/
  │           └── validators/
  │               └── auth_validators.dart
```

## Dependencies

- Flutter
- form_validator
- go_router (optional)

## Usage Example

```dart
// In your main.dart
import 'package:flutter/material.dart';
import 'features/auth/presentation/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
