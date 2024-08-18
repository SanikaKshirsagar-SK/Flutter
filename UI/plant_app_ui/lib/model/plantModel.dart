class PlantModel {
  final int id;
  final String name;
  final String image;
  final double price;
  bool isFav;
  final double height;
  final String soilType;
  final String sunlight;
  final String watering;
  final String description;
  final String category;
  final String potSize;
  int quantity;


  PlantModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    this.isFav = false,
    required this.height,
    required this.soilType,
    required this.sunlight,
    required this.watering,
    required this.description,
    required this.category,
    required this.potSize,
   this.quantity = 1,
  });

  factory PlantModel.fromJson(Map<String, dynamic> json) {
    return PlantModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'].toDouble(),
      isFav: json['isFav'] ?? false,
      height: json['height'].toDouble(),
      soilType: json['soilType'],
      sunlight: json['sunlight'],
      watering: json['watering'],
      description: json['description'],
      category: json['category'],
      potSize: json['potSize'],
      quantity: json['quantity'] ?? 1,

    );
  }
  Map<String, dynamic> toJson() {
  return {
    'id': id,
    'name': name,
    'image': image,
    'price': price,
    'isFav': isFav,
    'height': height,
    'soilType': soilType,
    'sunlight': sunlight,
    'watering': watering,
    'description': description,
    'category': category,
    'potSize': potSize,
      'quantity': quantity,

  };
}
PlantModel copyWith({
    int? id,
    String? name,
    String? image,
    double? price,
    bool? isFav,
    double? height,
    String? soilType,
    String? sunlight,
    String? watering,
    String? description,
    String? category,
    String? potSize,
    int? quantity,
  }) {
    return PlantModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      isFav: isFav ?? this.isFav,
      height: height ?? this.height,
      soilType: soilType ?? this.soilType,
      sunlight: sunlight ?? this.sunlight,
      watering: watering ?? this.watering,
      description: description ?? this.description,
      category: category ?? this.category,
      potSize: potSize ?? this.potSize,
      quantity: quantity ?? this.quantity,
    );
  }
}
