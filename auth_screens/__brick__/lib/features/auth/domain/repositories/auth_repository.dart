import '../entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<User> signup(String name, String email, String password);
  Future<void> resetPassword(String email);
  Future<void> logout();
}
