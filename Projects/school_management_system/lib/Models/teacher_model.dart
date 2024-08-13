// Teacher Model Class
class TeacherModel {

  // Instance Variables
  final int? teacherId;
  final String teacherName;
  final String teacherEducation;
  final List<String> taughtSubjects;
  final String teacherMobileNo;
  final String teacherEmailId;
  final String teacherUsername;
  final String teacherPassword;

  // Constructor
  TeacherModel({
    this.teacherId,
    required this.teacherName,
    required this.teacherEducation,
    required this.taughtSubjects,
    required this.teacherMobileNo,
    required this.teacherEmailId,
    required this.teacherUsername,
    required this.teacherPassword,
  });

  // Converting variables to map
  Map<String, dynamic> toMap({int? id}) {
    return {
      'id': id,
      'name': teacherName,
      'education': teacherEducation,
      'subjects': taughtSubjects.join(','), // Convert list to comma-separated string
      'mobileNo': teacherMobileNo,
      'email': teacherEmailId,
      'username': teacherUsername,
      'password': teacherPassword,
    };
  }

  // Converting variable to JSON objects key 
  factory TeacherModel.fromMap(Map<String, dynamic> map) {
    return TeacherModel(
      teacherId: map['id'],
      teacherName: map['name'],
      teacherEducation: map['education'],
      taughtSubjects: (map['subjects'] as String).split(','), // Convert comma-separated string to list
      teacherMobileNo: map['mobileNo'],
      teacherEmailId: map['email'],
      teacherUsername: map['username'],
      teacherPassword: map['password'],
    );
  }
}