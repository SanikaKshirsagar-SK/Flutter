import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/widget.dart';
import '../controllers/dashcontroller.dart';
import '../controllers/databasecontroller.dart';

import '../controllers/profilecontroller.dart';
import '../model/usermodel.dart';
import 'home.dart';
import 'signupscreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final _formKey = GlobalKey<FormState>();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  DatabaseController controller = DatabaseController();
 @override
  void initState() {
    super.initState();
    DashboardController controller = Get.put(DashboardController());
    controller.tabIndex.value = 0; 
  }
  void successSnackBar() {
    Get.snackbar("Success", "Logged In Successfully..",
        backgroundColor:  const Color.fromRGBO(118, 152, 75, 1), snackPosition: SnackPosition.TOP);
    Future.delayed(const Duration(seconds: 1), () {
      Get.to(() => const HomeScreen());
    });
  }

  void unsuccessSnackBar() {
    Get.snackbar("Error", "Invalid Username or Password..",
        backgroundColor: Colors.red, snackPosition: SnackPosition.TOP);
  }

  void submitButton() async {
    // if (_formKey.currentState!.validate()) {
      List<UserModel> userData = await controller.fetchUserData();

      bool flag = false;
      UserModel? loggedInUser;
      for (int i = 0; i < userData.length; i++) {
        if (userData[i].username == phoneNoController.text.trim() &&
            userData[i].password == passwordController.text) {
          flag = true;
          loggedInUser = userData[i];
        }
      }
      if (flag) {
        Get.find<ProfileController>().setLoggedInUser(loggedInUser);
        successSnackBar();
      } else {
        unsuccessSnackBar();
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        body: Padding(
          padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Log in",
                  style: textStyleData(
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                customTextField(
                  controller: phoneNoController,
                  prefixIcon: Icons.phone,
                  hintText: "Enter your phone number", // optional
                  color: Colors.grey, // optional
                  keyboardType: TextInputType.phone, // optional
                ),
                const SizedBox(
                  height: 40,
                ),
                customTextField(
                  obscureText: true,
                  prefixIcon: Icons.hide_image_outlined,
                  controller: passwordController,
                  hintText: "Enter your password", // optional
                  color: Colors.grey, // optional
                  keyboardType: TextInputType.phone, // optional
                ),
                const SizedBox(
                  height: 60,
                ),             
                  GestureDetector(
                  onTap: () {
                    submitButton();
                  },
                  child: buttonStyle(buttonText: "Login", context: context),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User? Click Here To Register ",
                      style: textStyleData1(12, 400, 18, [0, 0, 0, 1]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: Text(
                        "Sign Up",
                        style: textStyleData1(12, 900, 18, [0, 0, 0, 1]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/2.png",
                  height: 359,
                  width: 359,
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
        ));
  }
}
