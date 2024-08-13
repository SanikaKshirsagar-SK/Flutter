import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Instagram",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.black
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.favorite_outline_rounded
                )  
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.message_rounded
                ),            
              ),        
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,                                
              children: [
                const Image(
                  image : AssetImage("lake.jpg"),
                  width: 500,
                  height: 500,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.favorite_outline_outlined
                        ),
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.insert_comment_rounded
                        ),
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.send_outlined
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right:20),
                        child: IconButton(
                          onPressed: (){}, 
                          icon: const Icon(
                            Icons.save_outlined
                        )),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
