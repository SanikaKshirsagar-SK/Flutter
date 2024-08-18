import 'package:get/get.dart';
import 'package:plant_app_ui/model/plantModel.dart';

class PlantController extends GetxController {
  final RxList<PlantModel> plants = RxList<PlantModel>([]);
  final RxList<PlantModel> indoorPlants = RxList<PlantModel>();
  final RxList<PlantModel> floweringPlants = RxList<PlantModel>();
  final RxList<PlantModel> aromaticPlants = RxList<PlantModel>();
  final RxList<PlantModel> annuals = RxList<PlantModel>();
  final RxList<PlantModel> perennials = RxList<PlantModel>();
  final RxList<PlantModel> exotics = RxList<PlantModel>();
  final RxList<PlantModel> bulbs = RxList<PlantModel>();
  final RxList<PlantModel> shrubs = RxList<PlantModel>();
  final RxList<PlantModel> herbs = RxList<PlantModel>();
  final RxList<PlantModel> vines = RxList<PlantModel>();
  final RxList<PlantModel> succulents = RxList<PlantModel>();
  final RxList<PlantModel> houseplants = RxList<PlantModel>();
  final RxList<PlantModel> outdoorPlants = RxList<PlantModel>();

  final RxList<PlantModel> popularPlants = RxList<PlantModel>();
  final RxList<PlantModel> recommendedPlants = RxList<PlantModel>();

  @override
  void onInit() {
    super.onInit();
    plants.addAll([
      PlantModel(
        id: 1,
        name: 'Snake Plant',
        image:
            'https://www.plantshop.me/media/product/sansevieria-trifasciata-laurentii-variegated-snake-plant-leaves_2000x-1.jpg',
        price: 200.0,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Low to medium sunlight',
        watering: 'Water sparingly',
        description:
            'A low-maintenance plant that can thrive in indoor conditions.',
        category: 'Indoor',
        potSize: 'Small',
      ),
      PlantModel(
        id: 2,
        name: 'Money Plant',
        image:
            'https://cdn.cdnparenting.com/articles/2019/03/12183438/1104282311-H-1024x700.jpg',
        price: 150.0,
        height: 20.0,
        soilType: 'Moist soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description:
            'A plant that is believed to bring good fortune and prosperity.',
        category: 'Indoor',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 3,
        name: 'Spider Plant',
        image:
            'https://i.pinimg.com/originals/b6/2b/f3/b62bf31b421bc6aa1a2eb722b92973d4.jpg',
        price: 100.0,
        height: 15.0,
        soilType: 'Well-draining soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description:
            'A plant that is easy to care for and can be propagated easily.',
        category: 'Indoor',
        potSize: 'Small',
      ),
      PlantModel(
        id: 4,
        name: 'Peace Lily',
        image:
            'https://www.mydomaine.com/thmb/9aB79USSkhiCVgGyXh1TBSvM7v8=/900x900/filters:fill(auto,1)/1566417254329_20190821-1566417255317-b9314f1d9f7a4668a466c5ffb1913a8f.jpg',
        price: 250.0,
        height: 40.0,
        soilType: 'Well-draining soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description: 'A plant that is known for its elegant white blooms.',
        category: 'Flowering',
        potSize: 'Large',
      ),
      PlantModel(
        id: 5,
        name: 'Dracaena',
        image:
            'https://cdn.shopify.com/s/files/1/0008/5858/7188/products/PXL_20210305_012714532-01_1920x.progressive.jpg?v=1614911964',
        price: 180.0,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Low to medium sunlight',
        watering: 'Water sparingly',
        description: 'A plant that can grow up to 10 feet tall.',
        category: 'Indoor',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 6,
        name: 'Philodendron',
        image:
            'https://tierraplants.com/wp-content/uploads/2017/05/final-philodendron.jpg',
        price: 220.0,
        height: 20.0,
        soilType: 'Moist soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description:
            'A plant that can be trained to climb up walls or trellises.',
        category: 'Indoor',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 7,
        name: 'Anthurium',
        image:
            'https://images.esellerpro.com/3048/I/593/84/Anthurium%20Red%20V1.jpg',
        price: 300.0,
        height: 20.0,
        soilType: 'Well-draining soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description: 'A plant that is known for its long-lasting flowers.',
        category: 'Flowering',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 8,
        name: 'Monstera',
        image:
            'https://www.plantandpot.nz/wp-content/uploads/2016/12/Monstera-large-grade-25cm.jpg',
        price: 350.0,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description: 'A plant that is known for its unique, glossy leaves.',
        category: 'Indoor',
        potSize: 'Large',
      ),
      PlantModel(
        id: 9,
        name: 'Ferns',
        image:
            'https://media1.popsugar-assets.com/files/thumbor/RgHPeWtNQR7TtF2gRfnwZWPBEf4/fit-in/728xorig/filters:format_auto-!!-:strip_icc-!!-/2019/08/15/049/n/1922794/567c3b03b9bef7fc_netimg33449F/i/Potted-Kimberly-Queen-Fern-Indoor-Plant.jpg',
        price: 120.0,
        height: 20.0,
        soilType: 'Moist soil',
        sunlight: 'Low to medium sunlight',
        watering: 'Water regularly',
        description: 'A plant that is known for its delicate, lacy fronds.',
        category: 'Indoor',
        potSize: 'Small',
      ),
      PlantModel(
        id: 10,
        name: 'Jasminium polyanthum',
        image:
            'http://www.houseofkojo.com/cdn/shop/files/jasmin-2.jpg?v=1711638367',
        price: 280.0,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description: 'A plant that is known for its fragrant, white flowers.',
        category: 'Aromatic',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 11,
        name: 'Bamboo Palm',
        image:
            'https://i.pinimg.com/originals/0c/d7/70/0cd7706550911bd237baf0b4c582c68c.png',
        price: 150.0,
        height: 20.0,
        soilType: 'Moist soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description:
            'A plant that is known for its slender stems and feathery leaves.',
        category: 'Indoor',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 12,
        name: 'Rubber Plant',
        image:
            'https://i.pinimg.com/originals/3d/87/fa/3d87fae0f2b881f7e0a6f97c16002618.jpg',
        price: 100.0,
        height: 20.0,
        soilType: 'Well-draining soil',
        sunlight: 'Medium sunlight',
        watering: 'Water regularly',
        description: 'A plant that is known for its large, dark green leaves.',
        category: 'Indoor',
        potSize: 'Small',
      ),
      PlantModel(
        id: 13,
        name: 'Pothos',
        image:
            'https://s3-eu-west-1.amazonaws.com/images.linnlive.com/cd5a3da6489c5bb8ee4b3028a823724c/28c60333-1de7-4a18-baea-2d7a33f2158f.jpg',
        price: 60.0,
        height: 10.0,
        soilType: 'Well-draining soil',
        sunlight: 'Low to medium sunlight',
        watering: 'Water sparingly',
        description:
            'A plant that is easy to care for and can be trained to climb.',
        category: 'Indoor',
        potSize: 'Small',
      ),
      PlantModel(
        id: 14,
        name: 'Succulent',
        image:
            'https://i.pinimg.com/originals/0c/9b/8d/0c9b8d421af879fd426c385b9198d042.jpg',
        price: 90.0,
        height: 10.0,
        soilType: 'Well-draining soil',
        sunlight: 'Medium sunlight',
        watering: 'Water sparingly',
        description: 'A plant that is known for its thick, fleshy leaves.',
        category: 'Outdoor',
        potSize: 'Small',
      ),
      PlantModel(
          id: 15,
          name: 'Jasmine',
          image:
              'https://creativefarmer.in/cdn/shop/products/61ubDZoQc4L._SL1024.jpg?v=1647501869',
          price: 120.0,
          height: 20.0,
          soilType: 'Well-draining soil',
          sunlight: 'Full sunlight',
          watering: 'Water sparingly',
          description:
              'A plant that is known for its fragrant flowers and sweet scent.',
          category: 'Aromatic',
          potSize: 'Medium'),
      PlantModel(
        id: 16,
        name: 'Rosemary',
        image: 'https://s3.envato.com/files/297535890/35255.jpg',
        price: 150.0,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sunlight',
        watering: 'Water sparingly',
        description:
            'A plant that is known for its fragrant, needle-like leaves.',
        category: 'Aromatic',
        potSize: 'Large',
      ),
      PlantModel(
        id: 17,
        name: 'Marigold',
        image: 'https://m.media-amazon.com/images/I/81Qec6DVL9L.jpg',
        price: 80.0,
        height: 15.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sunlight',
        watering: 'Water regularly',
        description:
            'A plant that is known for its bright, orange and yellow flowers.',
        category: 'Flowering',
        potSize: 'Small',
      ),
      PlantModel(
        id: 18,
        name: 'Petunia',
        image:
            'https://www.provenwinners.com/sites/provenwinners.com/files/imagecache/low-resolution/ifa_upload/small_deck-32.jpg',
        price: 100.0,
        height: 20.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sunlight',
        watering: 'Water regularly',
        description: 'A plant that is known for its trumpet-shaped flowers.',
        category: 'Flowering',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 19,
        name: 'Daisy',
        image: 'https://m.media-amazon.com/images/I/71+oOtbDuWL.jpg',
        price: 60.0,
        height: 15.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sunlight',
        watering: 'Water regularly',
        description:
            'A plant that is known for its cheerful, white and yellow flowers.',
        category: 'Flowering',
        potSize: 'Small',
      ),
      PlantModel(
        id: 20,
        name: 'Sunflower',
        image:
            'https://i0.wp.com/savvygardening.com/wp-content/uploads/2022/04/Helianthus_annuus_Solsation%E2%84%A2_Flame_multiflower_container.jpeg?resize=600%2C800&ssl=1',
        price: 180.0,
        height: 40.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sunlight',
        watering: 'Water regularly',
        description:
            'A plant that is known for its tall, bright yellow flowers.',
        category: 'Flowering',
        potSize: 'Large',
      ),
      PlantModel(
        id: 21,
        name: 'Zinnia',
        image:
            'https://www.a-garden-diary.com/wp-content/uploads/2024/04/Growing-Zinnias-in-Pots-1.jpg',
        price: 100.0,
        isFav: false,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Moderate',
        description:
            'Zinnia is a popular annual flower that comes in a variety of colors.',
        category: 'Annuals',
        potSize: 'Small',
      ),
      PlantModel(
        id: 22,
        name: 'Lily',
        image:
            'https://buildingandinteriors.com/wp-content/uploads/2022/07/Lily-flowers-5.jpg',
        price: 150.0,
        isFav: false,
        height: 40.0,
        soilType: 'Moist soil',
        sunlight: 'Partial shade',
        watering: 'High',
        description:
            'Lily is a beautiful perennial flower that symbolizes purity and innocence.',
        category: 'Perennials',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 23,
        name: 'Orchid',
        image:
            'https://m.media-amazon.com/images/I/51qxsLai7iL._AC_UF894,1000_QL80_.jpg',
        price: 200.0,
        isFav: false,
        height: 20.0,
        soilType: 'Well-draining soil',
        sunlight: 'Bright indirect light',
        watering: 'Low',
        description:
            'Orchid is a delicate and exotic flower that requires careful maintenance.',
        category: 'Exotics',
        potSize: 'Small',
      ),
      PlantModel(
        id: 24,
        name: 'Tulip',
        image:
            'https://assets.ajio.com/medias/sys_master/root/20240617/vu8V/667023376f60443f3149c246/-473Wx593H-700098877-pink-MODEL.jpg',
        price: 120.0,
        isFav: false,
        height: 25.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Moderate',
        description:
            'Tulip is a popular spring-blooming flower that comes in a variety of colors.',
        category: 'Bulbs',
        potSize: 'Small',
      ),
      PlantModel(
        id: 25,
        name: 'Daffodil',
        image:
            'https://cdn.shopify.com/s/files/1/1902/7917/files/Daffodil_Bridal_Crown_in_Containers.jpg?v=1599737920',
        price: 100.0,
        isFav: false,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Moderate',
        description:
            'Daffodil is a bright and cheerful flower that blooms in the spring.',
        category: 'Bulbs',
        potSize: 'Small',
      ),
      PlantModel(
        id: 26,
        name: 'Rose Bush',
        image:
            'https://i.pinimg.com/originals/3e/a5/4e/3ea54e078e55145f486324d1b55f2bdd.jpg',
        price: 250.0,
        isFav: false,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Moderate',
        description:
            'Rose Bush is a popular flower that comes in a variety of colors.',
        category: 'Shrubs',
        potSize: 'Large',
      ),
      PlantModel(
        id: 27,
        name: 'Hydrangea',
        image:
            'https://i.pinimg.com/originals/20/21/89/202189b4b64d5e585eb4905d743327aa.png',
        price: 200.0,
        isFav: false,
        height: 40.0,
        soilType: 'Moist soil',
        sunlight: 'Partial shade',
        watering: 'High',
        description:
            'Hydrangea is a beautiful shrub that produces large flowers.',
        category: 'Shrubs',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 28,
        name: 'Lavender',
        image:
            'https://simplegardenlife.com/wp-content/uploads/2023/02/lavender-potted.jpg',
        price: 150.0,
        isFav: false,
        height: 20.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Low',
        description:
            'Lavender is a popular herb that is known for its calming effects.',
        category: 'Herbs',
        potSize: 'Small',
      ),
      PlantModel(
        id: 29,
        name: 'Gardenia',
        image:
            'https://balconygardenweb.b-cdn.net/wp-content/uploads/2016/02/Gardenia-jasminoides.jpg',
        price: 180.0,
        isFav: false,
        height: 30.0,
        soilType: 'Acidic soil',
        sunlight: 'Partial shade',
        watering: 'Moderate',
        description:
            'Gardenia is a beautiful shrub that produces fragrant flowers.',
        category: 'Shrubs',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 30,
        name: 'Bougainvillea',
        image:
            'https://i.pinimg.com/originals/e6/df/ef/e6dfef49cd7965b7595efc6a4ddccd93.jpg',
        price: 220.0,
        isFav: false,
        height: 40.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'High',
        description:
            'Bougainvillea is a popular vine that produces colorful flowers.',
        category: 'Vines',
        potSize: 'Large',
      ),
      PlantModel(
        id: 31,
        name: 'Hibiscus',
        image:
            'https://i.pinimg.com/originals/3d/bf/fd/3dbffd3348383223ec3b157dc9822970.jpg',
        price: 200.0,
        isFav: false,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Moderate',
        description: 'Hibiscus is a popular shrub that produces large flowers.',
        category: 'Shrubs',
        potSize: 'Medium',
      ),
      PlantModel(
        id: 32,
        name: 'Succulent Garden',
        image:
            'https://i.pinimg.com/originals/cc/68/72/cc6872f82c30b03ddd9ea3a0c005b8dd.jpg',
        price: 300.0,
        isFav: false,
        height: 20.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Low',
        description:
            'Succulent Garden is a popular arrangement of succulent plants.',
        category: 'Succulents',
        potSize: 'Small',
      ),
      PlantModel(
        id: 33,
        name: 'Dahlia',
        image:
            'https://cdn.shopify.com/s/files/1/0555/8363/7660/articles/indoor-dahlia-plant-maintenance-with-suitable-tips-for-care-674325.jpg?v=1671905807',
        price: 200.0,
        isFav: false,
        height: 40.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Moderate',
        description:
            'Dahlia is a popular flower that is known for its showy blooms.',
        category: 'Flowers',
        potSize: 'Large',
      ),
      PlantModel(
        id: 34,
        name: 'Peace Lily',
        image:
            'https://i0.wp.com/plantoindia.in/wp-content/uploads/2022/05/product7-1.png?fit=720%2C855&ssl=1',
        price: 180.0,
        isFav: false,
        height: 20.0,
        soilType: 'Well-draining soil',
        sunlight: 'Partial shade',
        watering: 'Low',
        description:
            'Peace Lily is a popular houseplant that is known for its elegant white blooms.',
        category: 'Houseplants',
        potSize: 'Small',
      ),
      PlantModel(
        id: 35,
        name: 'Violet',
        image:
            'https://tse1.mm.bing.net/th?id=OIP.jjMwpD_uubN5w-N6U5_fBQHaHa&pid=Api&P=0&h=180',
        price: 100.0,
        isFav: false,
        height: 20.0,
        soilType: 'Moist soil',
        sunlight: 'Partial shade',
        watering: 'High',
        description:
            'Violet is a popular flower that is known for its delicate purple petals.',
        category: 'Flowers',
        potSize: 'Small',
      ),
      PlantModel(
        id: 36,
        name: 'Pansy',
        image:
            'https://tse1.mm.bing.net/th?id=OIP.Egwp2XGhbDCz8mr9BQWoYgHaF7&pid=Api&P=0&h=180',
        price: 150.0,
        isFav: false,
        height: 30.0,
        soilType: 'Well-draining soil',
        sunlight: 'Full sun',
        watering: 'Moderate',
        description:
            'Pansy is a popular flower that is known for its colorful petals.',
        category: 'Flowers',
        potSize: 'Medium',
      ),
    ]);

    PlantModel orchid = plants.firstWhere((plant) => plant.name == 'Orchid');
    popularPlants.add(orchid);

    plants.where((plant) => plant.category == 'Indoor').forEach((plant) {
      if (!indoorPlants.any((p) => p.id == plant.id)) {
        indoorPlants.add(plant);
      }
      floweringPlants.clear();
      plants.where((plant) => plant.category == 'Flowers').forEach((plant) {
        if (!floweringPlants.any((p) => p.id == plant.id)) {
          floweringPlants.add(plant);
        }
      });

      aromaticPlants.clear();
      plants.where((plant) => plant.category == 'Aromatic').forEach((plant) {
        if (!aromaticPlants.any((p) => p.id == plant.id)) {
          aromaticPlants.add(plant);
        }
      });

      annuals.clear();
      plants.where((plant) => plant.category == 'Annuals').forEach((plant) {
        if (!annuals.any((p) => p.id == plant.id)) {
          annuals.add(plant);
        }
      });

      perennials.clear();
      plants.where((plant) => plant.category == 'Perennials').forEach((plant) {
        if (!perennials.any((p) => p.id == plant.id)) {
          perennials.add(plant);
        }
      });

      exotics.clear();
      plants.where((plant) => plant.category == 'Exotics').forEach((plant) {
        if (!exotics.any((p) => p.id == plant.id)) {
          exotics.add(plant);
        }
      });

      bulbs.clear();
      plants.where((plant) => plant.category == 'Bulbs').forEach((plant) {
        if (!bulbs.any((p) => p.id == plant.id)) {
          bulbs.add(plant);
        }
      });

      shrubs.clear();
      plants.where((plant) => plant.category == 'Shrubs').forEach((plant) {
        if (!shrubs.any((p) => p.id == plant.id)) {
          shrubs.add(plant);
        }
      });

      herbs.clear();
      plants.where((plant) => plant.category == 'Herbs').forEach((plant) {
        if (!herbs.any((p) => p.id == plant.id)) {
          herbs.add(plant);
        }
      });

      vines.clear();
      plants.where((plant) => plant.category == 'Vines').forEach((plant) {
        if (!vines.any((p) => p.id == plant.id)) {
          vines.add(plant);
        }
      });

      succulents.clear();
      plants.where((plant) => plant.category == 'Succulents').forEach((plant) {
        if (!succulents.any((p) => p.id == plant.id)) {
          succulents.add(plant);
        }
      });

      houseplants.clear();
      plants.where((plant) => plant.category == 'Houseplants').forEach((plant) {
        if (!houseplants.any((p) => p.id == plant.id)) {
          houseplants.add(plant);
        }
      });

      outdoorPlants.clear();
      plants.where((plant) => plant.category == 'Outdoor').forEach((plant) {
        if (!outdoorPlants.any((p) => p.id == plant.id)) {
          outdoorPlants.add(plant);
        }
      });
    });
    popularPlants.addAll(plants.where((plant) =>
        [
          'Marigold',
          'Jasmine',
          'Hibiscus',
          'Peace Lily',
        ].contains(plant.name) &&
        plant.name != 'Orchid'));

    // Add plants to recommended list
    PlantModel tulip = plants.firstWhere((plant) => plant.name == 'Tulip');
    recommendedPlants.add(tulip);

    recommendedPlants.addAll(plants.where((plant) =>
        [
          'Zinnia',
          'Gardenia',
          'Dahlia',
          'Bamboo',
          'Money Plant',
        ].contains(plant.name) &&
        plant.name != 'Tulip'));
  }

    final RxList<PlantModel> searchedProducts = <PlantModel>[].obs;

void searchProducts(String query) {
  searchedProducts.clear();
  for (var product in plants) {
    if (product.name.toLowerCase().contains(query.toLowerCase()) ||
        product.category.toLowerCase().contains(query.toLowerCase())) {
      searchedProducts.add(product);
    }
  }
}

  void updatePlant(PlantModel plant) {
    int index = plants.indexOf(plant);
    if (index != -1) {
      plants[index] = plant;
    }
  }

  void toggleFavorite(PlantModel plant) {
    plant.isFav = !plant.isFav;
    update();
  }

  List<String> getCategories() {
    return plants.map((plant) => plant.category).toSet().toList();
  }

  int getPlantCount(String category) {
    return plants.where((plant) => plant.category == category).length;
  }
}
