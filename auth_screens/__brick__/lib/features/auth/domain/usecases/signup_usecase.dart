import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class SignupUseCase {
  final AuthRepository repository;

  SignupUseCase(this.repository);

  Future<User> call(String name, String email, String password) async {
    try {
      return await repository.signup(name, email, password);
    } catch (e) {
      throw Exception('Signup failed: ${e.toString()}');
    }
  }
}
