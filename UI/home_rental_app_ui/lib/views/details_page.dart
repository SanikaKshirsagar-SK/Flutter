import 'package:flutter/material.dart';
import '../models/villa_model.dart';
import 'home_page.dart';
import '/views/first_page.dart';

class DetailsPage extends StatefulWidget {
  final VillaModel villaModelObj;
  final int imageIndex;
  const DetailsPage(
      {super.key, required this.villaModelObj, required this.imageIndex});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    int objIdx = widget.imageIndex + 1;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        title: Text(
          'Details',
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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    String imagePath = "";
                    int displayIndex = index + 1;
                    if (objIdx >= 1 && objIdx <= 8) {
                      for (var i = 0; i < 4; i++) {
                        imagePath = "assets/Villa$objIdx/V$displayIndex.png";
                      }
                    }
                    return Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  currentIndex = 0;
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  imagePath,
                                  height: double.infinity,
                                  width: 350,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                        const SizedBox(width: 20),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == index
                              ? const Color.fromRGBO(32, 169, 247, 1)
                              : const Color.fromRGBO(72, 72, 72, 1)));
                })),
            const SizedBox(height: 10),
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.villaModelObj.villaName,
                    style: textStyleData(22, 600, 33, [0, 0, 0, 1]),
                  ),
                  Text(
                    widget.villaModelObj.villaShortDescription,
                    style: textStyleData(15, 500, 22.5, [72, 72, 72, 1]),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "\$${widget.villaModelObj.villaPrice}",
                    style: textStyleData(16, 500, 24, [32, 169, 247, 1]),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    ' / month',
                    style: textStyleData(16, 500, 24, [72, 72, 72, 1]),
                  )
                ],
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRect(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 141,
                    width: 112,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.bed_outlined),
                        Text(
                          'Bedrooms',
                          style: textStyleData(14, 600, 21, [90, 90, 90, 1]),
                        ),
                        Text(
                          "${widget.villaModelObj.bedroomCount}",
                          style: textStyleData(16, 600, 24, [0, 0, 0, 1]),
                        )
                      ],
                    ),
                  ),
                ),
                ClipRect(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 141,
                    width: 112,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.bathroom_outlined),
                        Text(
                          'Bathrooms',
                          style: textStyleData(14, 600, 21, [90, 90, 90, 1]),
                        ),
                        Text(
                          "${widget.villaModelObj.bathroomCount}",
                          style: textStyleData(16, 600, 24, [0, 0, 0, 1]),
                        )
                      ],
                    ),
                  ),
                ),
                ClipRect(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 141,
                    width: 112,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.square_outlined),
                        Text(
                          'Square ft',
                          style: textStyleData(14, 600, 21, [90, 90, 90, 1]),
                        ),
                        Row(
                          children: [
                            Text(
                              widget.villaModelObj.villaArea,
                              style: textStyleData(16, 600, 24, [0, 0, 0, 1]),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'sq ft',
                              style: textStyleData(16, 600, 24, [0, 0, 0, 1]),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 115,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  widget.villaModelObj.villaLongDescription,
                  style: textStyleData(15, 400, 22.5, [0, 0, 0, 1]),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 55,
                width: 220,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(32, 169, 247, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child: Text(
                    'Rent Now',
                    style: textStyleData(22, 400, 33, [255, 255, 255, 1]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
