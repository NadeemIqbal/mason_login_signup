import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'forgot_password_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with your actual brand image path
    final String brandImage = 'assets/brand_logo.png';

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthAuthenticated) {
          // Navigate to home screen or show authenticated content
          return const Scaffold(body: Center(child: Text('Authenticated!')));
        }

        return LoginScreen(
          brandImage: brandImage,
          onSignupPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignupScreen(
                  brandImage: brandImage,
                  onLoginPressed: () => Navigator.pop(context),
                ),
              ),
            );
          },
          onForgotPasswordPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgotPasswordScreen(
                  brandImage: brandImage,
                  onBackToLogin: () => Navigator.pop(context),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
