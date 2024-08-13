import 'package:flutter/material.dart';
import '/models/villa_model.dart';
import 'details_page.dart';
import 'see_all_page.dart';
import '/views/first_page.dart';

List<Map<String, dynamic>> villaData = [
  {
    'villaImageURL': "assets/Villa1/V1.png",
    'villaName': "Sunshine Villa",
    'villaShortDescription': "London, Night Hill",
    'villaPrice': "5500",
    'villaArea': "7,000",
    'bedroomCount': 4,
    'bathroomCount': 4,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
  {
    'villaImageURL': "assets/Villa2/V1.png",
    'villaName': "Panda Villa",
    'villaShortDescription': "London, New Park",
    'villaPrice': "4500",
    'villaArea': "6,500",
    'bedroomCount': 4,
    'bathroomCount': 3,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
  {
    'villaImageURL': "assets/Villa3/V1.png",
    'villaName': "Glory Villa",
    'villaShortDescription': "London, Night Hill",
    'villaPrice': "5000",
    'villaArea': "5,500",
    'bedroomCount': 5,
    'bathroomCount': 4,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
  {
    'villaImageURL': "assets/Villa4/V1.png",
    'villaName': "Paradise Villa",
    'villaShortDescription': "London, New Park",
    'villaPrice': "4000",
    'villaArea': "7,500",
    'bedroomCount': 5,
    'bathroomCount': 4,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
  {
    'villaImageURL': "assets/Villa5/V1.png",
    'villaName': "Night Villa",
    'villaShortDescription': "London, Night Hill",
    'villaPrice': "3500",
    'villaArea': "4,000",
    'bedroomCount': 3,
    'bathroomCount': 6,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
  {
    'villaImageURL': "assets/Villa6/V1.png",
    'villaName': "Flora Villa",
    'villaShortDescription': "London, New Park",
    'villaPrice': "7500",
    'villaArea': "4,500",
    'bedroomCount': 4,
    'bathroomCount': 4,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
  {
    'villaImageURL': "assets/Villa7/V1.png",
    'villaName': "Flora Villa",
    'villaShortDescription': "London, New Park",
    'villaPrice': "7500",
    'villaArea': "4,500",
    'bedroomCount': 4,
    'bathroomCount': 4,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
  {
    'villaImageURL': "assets/Villa8/V1.png",
    'villaName': "Flora Villa",
    'villaShortDescription': "London, New Park",
    'villaPrice': "7500",
    'villaArea': "4,500",
    'bedroomCount': 4,
    'bathroomCount': 4,
    'villaLongDescription':
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
  },
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<VillaModel> villasList = List.generate(
    villaData.length,
    (index) => VillaModel(
        villaImageURL: villaData[index]['villaImageURL'],
        villaShortDescription: villaData[index]['villaShortDescription'],
        villaName: villaData[index]['villaName'],
        villaPrice: villaData[index]['villaPrice'],
        bedroomCount: villaData[index]['bedroomCount'],
        bathroomCount: villaData[index]['bathroomCount'],
        villaArea: villaData[index]['villaArea'],
        villaLongDescription: villaData[index]['villaLongDescription']));

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hey Sanika,',
                      style: textStyleData(14, 500, 21, [101, 101, 101, 1]),
                    ),
                    ClipOval(
                      child: SizedBox(
                        height: 48,
                        width: 48,
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 188,
                height: 60,
                child: Text(
                  "Let's find your best residence",
                  style: textStyleData(20, 500, 30, [0, 0, 0, 1]),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search your favourite paradise",
                      hintStyle: textStyleData(13, 500, 19.5, [33, 33, 33, 1]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most popular",
                      style: textStyleData(22, 600, 33, [0, 0, 0, 1]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SeeAllPage(
                            villaData: villaData,
                          );
                        }));
                      },
                      child: Text(
                        "See All",
                        style: textStyleData(16, 500, 24, [32, 169, 247, 1]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: villasList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DetailsPage(
                            villaModelObj: villasList[index],
                            imageIndex: index,
                          );
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  villasList[index].villaImageURL,
                                  height: 192,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                villasList[index].villaName,
                                style: textStyleData(16, 600, 24, [0, 0, 0, 1]),
                              ),
                              Text(
                                villasList[index].villaShortDescription,
                                style:
                                    textStyleData(12, 500, 18, [72, 72, 72, 1]),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${villaData[index]['villaPrice']}",
                                    style: textStyleData(
                                        14, 600, 21, [32, 169, 247, 1]),
                                  ),
                                  Text(
                                    "/ Month",
                                    style: textStyleData(
                                        12, 500, 18, [72, 72, 72, 1]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearby your location",
                      style: textStyleData(22, 600, 33, [0, 0, 0, 1]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SeeAllPage(
                            villaData: villaData,
                          );
                        }));
                      },
                      child: Text(
                        "More",
                        style: textStyleData(16, 500, 24, [32, 169, 247, 1]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                padding: const EdgeInsets.only(right: 20),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: villasList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DetailsPage(
                          villaModelObj: villasList[index],
                          imageIndex: index,
                        );
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 110,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                villasList[index].villaImageURL,
                                height: 90,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(villasList[index].villaName,
                                    style: textStyleData(
                                        16, 600, 24, [0, 0, 0, 1])),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(Icons.location_on),
                                    Text(
                                        villasList[index].villaShortDescription,
                                        style: textStyleData(
                                            12, 500, 18, [72, 72, 72, 1])),
                                  ],
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(Icons.bed_rounded),
                                    const SizedBox(width: 5),
                                    Text("${villasList[index].bedroomCount}",
                                        style: textStyleData(
                                            12, 500, 18, [72, 72, 72, 1])),
                                    const SizedBox(width: 5),
                                    Text("Bedrooms",
                                        style: textStyleData(
                                            12, 500, 18, [72, 72, 72, 1])),
                                    const SizedBox(width: 10),
                                    const Icon(Icons.bathroom_rounded),
                                    const SizedBox(width: 5),
                                    Text("${villasList[index].bedroomCount}",
                                        style: textStyleData(
                                            12, 500, 18, [72, 72, 72, 1])),
                                    const SizedBox(width: 5),
                                    Text("Bathrooms",
                                        style: textStyleData(
                                            12, 500, 18, [72, 72, 72, 1])),
                                  ],
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("\$${villaData[index]['villaPrice']}",
                                        style: textStyleData(
                                            14, 600, 21, [32, 169, 247, 1])),
                                    Text(' / month ',
                                        style: textStyleData(
                                            14, 600, 21, [72, 72, 72, 1]))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
