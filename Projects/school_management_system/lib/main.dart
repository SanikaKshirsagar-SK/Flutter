import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system/Views/home_page_screen.dart';
import 'Controllers/login-signup/principal_login_controller.dart';
import 'Controllers/login-signup/teacher_login_controller.dart';
import 'Controllers/login-signup/teacher_registration_controller.dart';
import 'Views/first_screen.dart';
import 'Views/login-signup/principal_login_screen.dart';
import 'Views/login-signup/teacher_login_screen.dart';
import 'Views/login-signup/teacher_registration_screen.dart';

//main() method
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Provider Registration
    return MultiProvider(
        providers: [
          //ChangeNotifierProviders
          ChangeNotifierProvider(
            create: (BuildContext context) => PrincipalLoginController(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => TeacherRegisterController(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => TeacherLoginController(),
          ),
        ],
        builder: (context, child) {
          return MaterialApp(
            home: const FirstScreen(),
            routes: {
              '/register_teacher': (context) => const RegisterTeacherScreen(),
              '/login_teacher': (context) => const LoginTeacherScreen(),
              '/first': (context) => const FirstScreen(),
              '/principal_login': (context) => const PrincipalLoginScreen(),
              '/home': (context) => const HomePageScreen(),
            },
          );
        });
  }
}
