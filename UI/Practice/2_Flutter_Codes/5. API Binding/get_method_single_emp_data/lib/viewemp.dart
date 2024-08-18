import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  Map<String, dynamic>? empData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("API Binding"),
      ),
      body: Center(
        child: empData == null
        ? const Text("Click on Button")
        : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(empData!['employee_name']),
                const SizedBox(
                  width: 20,
                ),
                Text("${empData!['employee_salary']}"),
              ],
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getEmployeeData,
        child: const Icon(Icons.abc_outlined),
      ),
    );
  }
  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1");
    http.Response response = await http.get(url);
    log(response.body);
    var responseData = jsonDecode(response.body);
    log(responseData['data']);
    setState(() {
      empData = responseData['data'];
    });
  }
}
