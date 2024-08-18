class UserModel {
  String name;
  String username;
  String password;
  int? id;

  UserModel(
      {required this.name,
      required this.username,
      required this.password,
      this.id});

  Map<String, dynamic> userMap() {
    return {
      'name': name,
      'username': username,
      'password': password,
    };
  }

  @override
  String toString() {
    return '''{name: $name, username: $username, password : $password}''';
  }
}
