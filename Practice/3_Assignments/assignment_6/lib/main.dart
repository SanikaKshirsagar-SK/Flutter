import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment6(),
    );
  }
}

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});
  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6> {
  ///VARIABLE
  int? selectedIndex = 0;

  /// LIST OF IMAGES

  final List<String> imageList = [
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&  c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
    "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
    "https://st2.depositphotos.com/13108546/46538/i/450/depositphotos_465382586-stock-photo-woman-mountains-landscape-autumn.jpg",
    "https://images.pexels.com/photos/2699478/pexels-photo-2699478.jpeg?cs=srgb&dl=pexels-sasha-prasastika-2699478.jpg&fm=jpg"
  ];
  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Images",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
              child: const Text(
                "Next",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text(
                "Reset",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

