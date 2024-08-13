// Principal Model Class
class PrincipalModel {

  //Instance Variables
  int principalId;
  String principalEmailId;
  String principalPassword;

  //Constructor
  PrincipalModel({required this.principalId, required this.principalEmailId, required this.principalPassword});

  //Converting instance variables to JSON object key
  factory PrincipalModel.fromJson(Map<String, dynamic> json) {
    return PrincipalModel(
      principalId: json['id'],
      principalEmailId: json['email'],
      principalPassword: json['password'],
    );
  }
}