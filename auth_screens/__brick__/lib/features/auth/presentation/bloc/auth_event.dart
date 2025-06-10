abstract class AuthEvent {}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;

  LoginRequested({required this.email, required this.password});
}

class SignupRequested extends AuthEvent {
  final String name;
  final String email;
  final String password;

  SignupRequested({
    required this.name,
    required this.email,
    required this.password,
  });
}

class ResetPasswordRequested extends AuthEvent {
  final String email;

  ResetPasswordRequested({required this.email});
}

class AuthStateChanged extends AuthEvent {
  final bool isAuthenticated;

  AuthStateChanged({required this.isAuthenticated});
}
