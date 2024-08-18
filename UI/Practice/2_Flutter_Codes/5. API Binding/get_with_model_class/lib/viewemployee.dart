import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get_with_model_class/employeemodel.dart';
import 'package:http/http.dart' as http;

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  List<Data> empData = [];
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
              Text(empData[index].empName!),
              const SizedBox(
                width: 20,
              ),
              Text("${empData[index].empSalary}")
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

    EmployeeModel empModel = EmployeeModel(responseData);
    
    setState(() {
      empData = empModel.data!;
    });
  }
}
