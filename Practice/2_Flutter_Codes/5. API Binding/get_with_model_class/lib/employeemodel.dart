class EmployeeModel {
  String? status;
  List<Data>? data;
  String? message;

  EmployeeModel(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = [];
    if (json['data'] != null) {
      json['data'].forEach((mapObject) {
        Data obj = Data(mapObject);
        data!.add(obj);
      });
    }
  }
}

class Data {
  int? empId;
  String? empName;
  int? empAge;
  int? empSalary;
  String? profileImg;

  Data(Map<String, dynamic> json) {
    empId = json['id'];
    empName = json['employee_name'];
    empAge = json['employee_age'];
    empSalary = json['employee_salary'];
    profileImg = json['profile_image'];
  }
}
