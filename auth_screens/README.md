# Auth Screens Mason Brick

A Flutter authentication screens brick with customizable options. This brick provides a complete authentication flow including login, signup, and forgot password screens with a clean architecture implementation.

## 🚀 Quick Start

```bash
# Install the brick
mason add auth_screens

# Create a new project with the brick
mason make auth_screens
```

## 📋 Features

- **Login Screen**
  - Customizable app bar
  - Email/Password fields with validation
  - Remember me option
  - Forgot password link
  - Social login buttons (optional)
  - Customizable submit button

- **Signup Screen**
  - Dynamic form fields
  - Field validation
  - Password strength indicator
  - Terms and conditions checkbox
  - Customizable submit button

- **Forgot Password Screen**
  - Email field with validation
  - Popup or full screen mode
  - Success/Error handling
  - Customizable submit button

- **Clean Architecture**
  - BLoC pattern for state management
  - Repository pattern for data handling
  - Use cases for business logic
  - Entity models for data structures

## 🎨 Customization Options

### Basic Configuration
```yaml
app_name: My Awesome App
output_dir: lib/features/auth
```

### Brand Image Configuration
```yaml
show_brand_image: true
brand_image_path: "assets/images/logo.png"
brand_image_height: 120
brand_image_width: 120
brand_image_fit: contain
brand_image_alignment: center
```

### Login Screen Configuration
```yaml
show_login_appbar: true
show_forgot_password: true
login_button_text: "Login"
```

### Signup Screen Configuration
```yaml
show_signup_appbar: true
signup_button_text: "Sign Up"
signup_fields:
  - name: name
    type: text
    required: true
    placeholder: "Enter your name"
  - name: email
    type: email
    required: true
    placeholder: "Enter your email"
  - name: password
    type: password
    required: true
    placeholder: "Enter your password"
```

### Forgot Password Configuration
```yaml
show_forgot_password_popup: true
forgot_password_button_text: "Reset Password"
```

## 🎯 Theme Integration

The auth screens use your app's theme automatically. Make sure to set up your app's theme in your `MaterialApp`:

```dart
MaterialApp(
  theme: ThemeData(
    // Your app's theme configuration
    primarySwatch: Colors.blue,
    // Other theme properties...
  ),
  // Other app configuration...
)
```

The auth screens will use:
- `primaryColor` for buttons and accents
- `colorScheme` for various UI elements
- `textTheme` for text styles
- `inputDecorationTheme` for form fields
- `elevatedButtonTheme` for buttons
- `textButtonTheme` for text buttons
- `appBarTheme` for app bars
- `snackBarTheme` for error messages

## 📸 Screenshots

### Default Theme
![Default Theme Login](docs/screenshots/default_login.png)
![Default Theme Signup](docs/screenshots/default_signup.png)
![Default Theme Forgot Password](docs/screenshots/default_forgot_password.png)

### Custom Theme
![Custom Theme Login](docs/screenshots/custom_login.png)
![Custom Theme Signup](docs/screenshots/custom_signup.png)
![Custom Theme Forgot Password](docs/screenshots/custom_forgot_password.png)

## 📁 Project Structure

```
lib/
  ├── features/
  │   └── auth/
  │       ├── data/
  │       │   └── repositories/
  │       │       └── auth_repository_impl.dart
  │       ├── domain/
  │       │   ├── entities/
  │       │   │   └── user.dart
  │       │   ├── repositories/
  │       │   │   └── auth_repository.dart
  │       │   └── usecases/
  │       │       ├── login_usecase.dart
  │       │       ├── signup_usecase.dart
  │       │       └── reset_password_usecase.dart
  │       └── presentation/
  │           ├── bloc/
  │           │   ├── auth_bloc.dart
  │           │   ├── auth_event.dart
  │           │   └── auth_state.dart
  │           ├── screens/
  │           │   ├── auth_screen.dart
  │           │   ├── login_screen.dart
  │           │   ├── signup_screen.dart
  │           │   └── forgot_password_screen.dart
  │           ├── templates/
  │           │   └── auth_template.dart
  │           └── utils/
  │               └── field_validator.dart
  └── main.dart
```

## 📦 Dependencies

```yaml
dependencies:
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5
  form_validator: ^2.1.1
```

## 🔧 Usage Examples

### Basic Usage
```dart
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Your app's theme configuration
      ),
      home: AuthScreen(
        onLoginSuccess: (user) {
          // Handle successful login
        },
        onSignupSuccess: (user) {
          // Handle successful signup
        },
        onPasswordReset: (email) {
          // Handle password reset
        },
      ),
    ),
  );
}
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- BLoC pattern for state management
- All contributors who have helped shape this brick
