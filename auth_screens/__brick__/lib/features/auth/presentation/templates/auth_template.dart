class AuthTemplate {
  // Login Page Options
  final bool showLoginAppBar;
  final bool showForgotPassword;
  final String loginSubmitButtonText;

  // Signup Page Options
  final bool showSignupAppBar;
  final List<SignupField> signupFields;
  final String signupSubmitButtonText;

  // Forgot Password Options
  final bool showForgotPasswordPopup;
  final String forgotPasswordSubmitButtonText;

  const AuthTemplate({
    // Login Page Defaults
    this.showLoginAppBar = true,
    this.showForgotPassword = true,
    this.loginSubmitButtonText = 'Login',

    // Signup Page Defaults
    this.showSignupAppBar = true,
    this.signupFields = const [
      SignupField(name: 'name', type: FieldType.text, isRequired: true),
      SignupField(name: 'email', type: FieldType.email, isRequired: true),
      SignupField(name: 'password', type: FieldType.password, isRequired: true),
    ],
    this.signupSubmitButtonText = 'Sign Up',

    // Forgot Password Defaults
    this.showForgotPasswordPopup = true,
    this.forgotPasswordSubmitButtonText = 'Reset Password',
  });
}

class SignupField {
  final String name;
  final FieldType type;
  final bool isRequired;
  final String? validationMessage;
  final String? placeholder;

  const SignupField({
    required this.name,
    required this.type,
    this.isRequired = true,
    this.validationMessage,
    this.placeholder,
  });
}

enum FieldType {
  text,
  email,
  password,
  phone,
  number,
  date,
  time,
  datetime,
  url,
  multiline,
}
