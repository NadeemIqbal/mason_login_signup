import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/screens/auth_screen.dart';
import 'features/auth/domain/usecases/login_usecase.dart';
import 'features/auth/domain/usecases/signup_usecase.dart';
import 'features/auth/domain/usecases/reset_password_usecase.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        loginUseCase: LoginUseCase(AuthRepositoryImpl()),
        signupUseCase: SignupUseCase(AuthRepositoryImpl()),
        resetPasswordUseCase: ResetPasswordUseCase(AuthRepositoryImpl()),
      ),
      child: MaterialApp(
        title: 'Auth Demo',
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
        home: const AuthScreen(),
      ),
    );
  }
}
