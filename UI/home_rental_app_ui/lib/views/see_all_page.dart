import 'package:flutter/material.dart';
import '/views/first_page.dart';
import 'details_page.dart';
import 'home_page.dart';

class SeeAllPage extends StatelessWidget {
  final List<Map<String, dynamic>> villaData;
  const SeeAllPage({super.key, required this.villaData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        title: Text(
          'Discover',
          style: textStyleData(20, 500, 30, [0, 0, 0, 1]),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded)),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Best Seller',
              style: textStyleData(20, 900, 30, [0, 0, 0, 1]),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    // childAspectRatio: 3 / 4
                  ),
                  itemCount: villaData.length,
                  itemBuilder: (count, index) {
                    return Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return DetailsPage(villaModelObj: villasList[index], imageIndex: index,);
                          }));
                        },
                        child: Container(
                          height: 450,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  villaData[index]['villaImageURL'],
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                villaData[index]['villaName'],
                                style: textStyleData(15, 500, 30, [0, 0, 0, 1]),
                              ),
                              Text(
                                "\$${villaData[index]['villaPrice']}",
                                style: textStyleData(18, 900, 30, [0, 0, 0, 1]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
