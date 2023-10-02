class UserData {
  final String name;
  final String email;
  final String username;
  final String password;

  UserData({
    required this.name,
    required this.email,
    required this.username,
    required this.password,
  });

  // Convert the object to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'username': username,
      'password': password,
    };
  }

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      name: json['name'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );
  }
}
