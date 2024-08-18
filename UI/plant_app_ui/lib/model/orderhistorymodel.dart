import 'package:plant_app_ui/model/plantModel.dart';

class OrderModel {
  String id;
  String name;
  String image;
  String orderDate;
  double cartTotal;
  double price;
  List<PlantModel> plants;

  OrderModel({
    required this.id,
    required this.name,
    required this.image,
    required this.orderDate,
    required this.cartTotal,
    required this.plants,
    required this.price,

  });

  Map<String, dynamic> orderMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'orderDate': orderDate,
      'cartTotal': cartTotal,
      'price': price,
      'plants': plants.map((product) => product.toJson()).toList(),
    };
  }

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      orderDate: json['orderDate'],
      cartTotal: json['cartTotal']?.toDouble() ?? 0,
      price: json['price']?.toDouble() ?? 0,

      plants: json['plants']
          .map((productJson) => PlantModel.fromJson(productJson))
          .toList(),
    );
  }
}