import '../repositories/auth_repository.dart';

class ResetPasswordUseCase {
  final AuthRepository repository;

  ResetPasswordUseCase(this.repository);

  Future<void> call(String email) async {
    try {
      await repository.resetPassword(email);
    } catch (e) {
      throw Exception('Password reset failed: ${e.toString()}');
    }
  }
}
