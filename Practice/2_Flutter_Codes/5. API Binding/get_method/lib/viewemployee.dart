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
  List<dynamic> empData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("API Binding"),
      ),
      body: ListView.builder(
              itemCount: empData.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(empData[index]['employee_name']),
                    const SizedBox(width: 20,),
                    Text("${empData[index]['employee_salary']}")
                  ],
                );
              },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle_outline),
        onPressed: () {
          getEmployeeData();
        },
      ),
    );
  }

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    http.Response response = await http.get(url);
    log(response.body);
    var responseData = jsonDecode(response.body);
    // log("${responseData['status']}");
    // log("${responseData['data'][0]}");
    setState(() {
      empData = responseData['data'];
    });
  }
}
