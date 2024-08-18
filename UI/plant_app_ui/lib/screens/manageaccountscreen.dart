
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/databasecontroller.dart';
import '../model/usermodel.dart';
import '../widget.dart';

class ManageAccountScreen extends StatefulWidget {
  const ManageAccountScreen({super.key});

  @override
  ManageAccountScreenState createState() => ManageAccountScreenState();
}

class ManageAccountScreenState extends State<ManageAccountScreen> {
  final DatabaseController _databaseController = Get.find();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  UserModel? _userModel;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  // @override
  // void dispose() {
  //   Get.delete<DatabaseController>();
  //   _nameController.dispose();
  //   _usernameController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }

  _fetchUserData() async {
    List<UserModel> userData = await _databaseController.fetchUserData();
    if (userData.isNotEmpty) {
      _userModel = userData.first;
      _nameController.text = _userModel!.name;
      _usernameController.text = _userModel!.username;
      _passwordController.text = _userModel!.password;
    }
  }

  _updateUserData() async {
    if (_formKey.currentState!.validate()) {
      UserModel userModel = UserModel(
        id: _userModel!.id,
        name: _nameController.text,
        username: _usernameController.text,
        password: _passwordController.text,
      );
      await _databaseController.updateUserData(userModel);
      Get.snackbar('Success', 'User data updated successfully');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: customAppBar1(
        title: 'Manage Account',
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset('assets/back.svg', width: 30, height: 30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBox20(),
                Text(
                  "Edit account details",
                  style: textStyleData1(24, 600, 24, [13, 13, 14, 1]),
                ),
                sizedBox20(),
                sizedBox20(),
                customTextField1('Name',
                    controller: _nameController, label: 'Edit Name'),
                sizedBox20(),
                customTextField1('Username',
                    controller: _usernameController, label: 'Edit UserName'),
                sizedBox20(),
                customTextField1('Password',
                    controller: _passwordController,
                    label: 'Edit Password',
                    obscureText: true),
                sizedBox20(),
                Center(
                  child: customButtonRounded(
                      onPressed: _updateUserData, buttonText: 'Update',color: Color.fromRGBO(118, 152, 75, 1)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
