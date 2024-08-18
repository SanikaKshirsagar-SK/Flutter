import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widget.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: customAppBar1(title: 'Contact Us'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              customTextFormField('Name',
                  controller: _nameController,
                  validator: 'Please enter your name'),
              sizedBox20(),
              customTextFormField('Email',
                  controller: _emailController,
                  validator: 'Please enter a valid email address'),
              sizedBox20(),
              customTextFormField('Message',
                  controller: _messageController,
                  validator: 'Please enter a message'),
              sizedBox20(),
              GestureDetector(
                
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _nameController.clear();
                    _emailController.clear();
                    _messageController.clear();
                    Get.snackbar('Message sent successfully', '');
                  }
                },
          child: buttonStyle(buttonText: 'Send Message', context: context),
              ),
              sizedBox20(),
              sizedBox20(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You can also contact us through:',
                    style: textStyleData18(),
                  ),
                  sizedBox10(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.phone,
                          size: 24, color: Color.fromRGBO(118, 152, 75, 1)),
                      sizedBoxWidth10(),
                      Text(
                        '+91 9356176691',
                        style: textStyleData18(),
                      ),
                      sizedBoxWidth20(),
                      GestureDetector(
                        onTap: () async {
                          await launch('tel:+919356176691');
                        },
                        child: const Text(
                          'Call us',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(118, 152, 75, 1)),
                        ),
                      ),
                    ],
                  ),
                  sizedBox10(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.email,
                          size: 24, color: Color.fromRGBO(118, 152, 75, 1)),
                      sizedBoxWidth10(),
                      Text(
                        'kshirsanika27@gmail.com',
                        style: textStyleData18(),
                      ),
                      sizedBoxWidth20(),
                      GestureDetector(
                        onTap: () async {
                          await launch('mailto:kshirsanika27@gmail.com');
                        },
                        child: const Text(
                          'Email us',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(118, 152, 75, 1)),
                        ),
                      ),
                    ],
                  ),
                  sizedBox10(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on,
                          size: 24, color: Color.fromRGBO(118, 152, 75, 1)),
                      sizedBoxWidth10(),
                      Text(
                        '123 Main St, Anytown, Pune',
                        style: textStyleData18(),
                      ),
                    ],
                  ),
                  sizedBox20(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
