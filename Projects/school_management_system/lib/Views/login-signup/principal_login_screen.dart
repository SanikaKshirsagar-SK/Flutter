import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Controllers/login-signup/principal_login_controller.dart';

class PrincipalLoginScreen extends StatefulWidget {
  const PrincipalLoginScreen({super.key});

  @override
  PrincipalLoginScreenState createState() => PrincipalLoginScreenState();
}

class PrincipalLoginScreenState extends State<PrincipalLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _principalEmail, _principalPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Email TextField
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
                onSaved: (value) => _principalEmail = value!,
              ),
              // Password TextField
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                onSaved: (value) => _principalPassword = value!,
              ),
              const SizedBox(height: 20),
              // Login Button
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // If Successful
                    try {
                     await Provider.of<PrincipalLoginController>(context,
                              listen: false)
                         .loginAsPrincipal(
                              _principalEmail, _principalPassword);
                     if (Provider.of<PrincipalLoginController>(context, listen: false).isLoggedIn) {
                      ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('Principal Login successful')));
                        Navigator.pushReplacementNamed(context, '/register_teacher');  }
                        else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Invalid credentials')));
                      }
                    } 
                    // If failed
                    catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Invalid credentials')));
                    }
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}