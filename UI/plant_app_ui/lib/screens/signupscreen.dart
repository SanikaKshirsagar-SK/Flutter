import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/screens/login.dart';

import '../controllers/databasecontroller.dart';
import '../model/usermodel.dart';
import '../widget.dart';

class SignUpScreen extends GetView<DatabaseController> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneNoController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  SignUpScreen({super.key});

  void successSnackBar() {
    Get.snackbar("Success", "Signed Up Successfully..",
        backgroundColor:  const Color.fromRGBO(118, 152, 75, 1), snackPosition: SnackPosition.TOP);
    Future.delayed(const Duration(seconds: 1), () {
      Get.to(() => const Login());
    });
  }

  void unsuccessSnackBar() {
    Get.snackbar("Error", "Passwords do not match..",
        backgroundColor: Colors.red, snackPosition: SnackPosition.TOP);
  }

  void submitButton() async {
    if (_formKey.currentState!.validate()) {
      if (passwordController.text == confirmPasswordController.text) {
        UserModel obj = UserModel(
            name: nameController.text,
            username: phoneNoController.text,
            password: passwordController.text);
        await controller.insertUserData(obj);
        successSnackBar();
      } else {
        unsuccessSnackBar();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        appBar: customAppBar1(
            title: "Sign Up",
            backgroundColor: const Color.fromRGBO(118, 152, 75, 1)),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customTextField1("Name", controller: nameController),
                const SizedBox(height: 30),
                customTextField1("Username", controller: phoneNoController),
                const SizedBox(height: 30),
                customTextField1("Password", controller: passwordController),
                const SizedBox(height: 30),
                customTextField1("Confirm Password",
                    controller: confirmPasswordController),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () {
                      submitButton();
                    },
                    child: buttonStyle(buttonText:  "Sign Up", context: context),),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: textStyleData1(12, 400, 18, [0, 0, 0, 0.6]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Login());
                      },
                      child: Text(
                        "Sign In",
                        style: textStyleData1(12, 900, 18, [0, 0, 0, 0.6]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
