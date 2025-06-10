class AuthModel {
  final String email;
  final String password;
  final String? confirmPassword;
  final String? name;

  AuthModel({
    required this.email,
    required this.password,
    this.confirmPassword,
    this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      if (confirmPassword != null) 'confirmPassword': confirmPassword,
      if (name != null) 'name': name,
    };
  }

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String?,
      name: json['name'] as String?,
    );
  }
}
