class UserInfo {
  String name;
  String username;
  String password;
  int? id;

  UserInfo(
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

class ToDoModelClass {
  int? taskId;
  String title;
  String description;
  String date;
  bool isChecked;

  ToDoModelClass({
    this.taskId,
    required this.title,
    required this.description,
    required this.date,
    this.isChecked = false,
  });

  Map<String, dynamic> taskMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
      'isChecked': isChecked ? 1 : 0,
    };
  }

  @override
  String toString() {
    return '''{title: $title, description: $description, date : $date, isChecked : $isChecked}''';
  }
}
