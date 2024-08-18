import 'dart:developer';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:get/get.dart';

import '../model/orderhistorymodel.dart';
import '../model/plantModel.dart';
import '../model/usermodel.dart';

class DatabaseController extends GetxController {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await createDB();
    return _database!;
  }

  createDB() async {
    return openDatabase(
      path.join(await getDatabasesPath(), "UserDB.db"),
      version: 1,
      onCreate: (db, version) {
        db.execute('''
            CREATE TABLE UserData(
              Id INTEGER PRIMARY KEY ,
              name TEXT,
              username TEXT,
              password TEXT
            )''');
        db.execute('''
          CREATE TABLE PlantData(
            id INTEGER PRIMARY KEY,
            name TEXT,
            image TEXT,
            price REAL,
            isFav INTEGER,
            height REAL,
            soilType TEXT,
            sunlight TEXT,
            watering TEXT,
            description TEXT,
            category TEXT,
            potSize TEXT,
            quantity INTEGER
          )
''');
        db.execute('''
            CREATE TABLE CartData(
              Id INTEGER PRIMARY KEY ,
              productId TEXT,
              title TEXT,
              image TEXT,
              price REAL,
              size TEXT,
              quantity INTEGER
            )''');
        db.execute('''
          CREATE TABLE OrderHistoryData(
            Id INTEGER PRIMARY KEY ,
            orderId TEXT,
            name TEXT,
            image TEXT,
            cartTotal REAL,
            price REAL,
            quantity INTEGER,
            orderDate TEXT
          )''');
        log("User Data Table created");
        log("Cart Data Table created");
        log("Wishlist Data Table created");
        log("Order History Data Table created");
      },
    );
  }

  Future<void> insertUserData(UserModel obj) async {
    final localDB = await database;
    localDB.insert(
      "UserData",
      obj.userMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    log("User Data Inserted");
    update();
  }

  Future<List<UserModel>> fetchUserData() async {
    final localDB = await database;

    List<Map<String, dynamic>> userData = await localDB.query("UserData");

    return List.generate(userData.length, (idx) {
      return UserModel(
        id: userData[idx]['id'],
        name: userData[idx]['name'],
        username: userData[idx]['username'],
        password: userData[idx]['password'],
      );
    });
  }

  Future<void> updateUserData(UserModel obj) async {
    final localDB = await database;
    localDB.update(
      "UserData",
      obj.userMap(),
      where: "username = ?",
      whereArgs: [obj.username],
    );
    log("User Data Updated");
    update();
  }

  Future<void> insertCartData(PlantModel obj) async {
    final localDB = await database;
    localDB.insert(
      "PlantData",
      {
        'id': obj.id,
        'name': obj.name,
        'image': obj.image,
        'price': obj.price,
        'isFav': obj.isFav,
        'height': obj.height,
        'soilType': obj.soilType,
        'sunlight': obj.sunlight,
        'watering': obj.watering,
        'description': obj.description,
        'category': obj.category,
        'potSize': obj.potSize,
        'quantity': obj.quantity,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    log("Plant Data Inserted");
    update();
  }

  Future<void> updateCartData(PlantModel obj) async {
    final localDB = await database;
    localDB.update(
      "PlantData",
      {
        'id': obj.id,
        'name': obj.name,
        'image': obj.image,
        'price': obj.price,
        'isFav': obj.isFav,
        'height': obj.height,
        'soilType': obj.soilType,
        'sunlight': obj.sunlight,
        'watering': obj.watering,
        'description': obj.description,
        'category': obj.category,
        'potSize': obj.potSize,
        'quantity': obj.quantity,
      },
      where: "id = ?",
      whereArgs: [obj.id],
    );
    log("Plant Data Updated");
    update();
  }

  Future<List<PlantModel>> fetchCartData() async {
  final localDB = await database;
  List<Map<String, dynamic>> cartData = await localDB.query("PlantData");
  return List.generate(cartData.length, (idx) {
   return PlantModel(
  id: cartData[idx].containsKey('id') ? cartData[idx]['id'] : 0,
  name: cartData[idx].containsKey('name') ? cartData[idx]['name'] : '',
  image: cartData[idx].containsKey('image') ? cartData[idx]['image'] : '',
  price: cartData[idx].containsKey('price') ? cartData[idx]['price'] : 0.0,
  isFav: cartData[idx].containsKey('isFav') ? cartData[idx]['isFav'] == 1 : false,
  height: cartData[idx].containsKey('height') ? cartData[idx]['height'] : 0.0,
  soilType: cartData[idx].containsKey('soilType') ? cartData[idx]['soilType'].toString() : '',
  sunlight: cartData[idx].containsKey('sunlight') ? cartData[idx]['sunlight'].toString() : '',
  watering: cartData[idx].containsKey('watering') ? cartData[idx]['watering'].toString() : '',
  description: cartData[idx].containsKey('description') ? cartData[idx]['description'].toString() : '',
  category: cartData[idx].containsKey('category') ? cartData[idx]['category'].toString() : '',
  potSize: cartData[idx].containsKey('potSize') ? cartData[idx]['potSize'].toString() : '',
  quantity: cartData[idx].containsKey('quantity') ? cartData[idx]['quantity'] : 0,
); });
}

  Future<void> deleteCartData(int id) async {
    final localDB = await database;
    localDB.delete(
      "PlantData",
      where: "id = ?",
      whereArgs: [id],
    );
    log("Plant Data Deleted");
    update();
  }

  // Future<void> insertWishlistData(PlantModel obj) async {
  //   final localDB = await database;
  //   localDB.insert(
  //     "WishlistData",
  //     {
  //       'productId': obj.id,
  //       'title': obj.title,
  //       'image': obj.image,
  //       'price': obj.price,
  //       'isInWishlist': 1,
  //     },
  //     conflictAlgorithm: ConflictAlgorithm.replace,
  //   );
  //   log("Wishlist Data Inserted");
  //   update();
  // }

  // Future<void> updateWishlistData(PlantModel obj) async {
  //   final localDB = await database;
  //   localDB.update(
  //     "WishlistData",
  //     {
  //       'isInWishlist': 0,
  //     },
  //     where: "productId = ?",
  //     whereArgs: [obj.id],
  //   );
  //   log("Wishlist Data Updated");
  //   update();
  // }
Future<List<PlantModel>> fetchWishlistData() async {
  final localDB = await database;

  List<Map<String, dynamic>> wishlistData =
      await localDB.query("PlantData");

  return List.generate(wishlistData.where((element) => element['isFav'] == 1).length, (idx) {
    return PlantModel(
      id: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['id'],
      name: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['name'] ?? '',
      image: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['image'] ?? '',
      price: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['price'],
      isFav: true,
      height: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['height'] ?? 0.0,
      soilType: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['soilType'] ?? '',
      sunlight: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['sunlight'] ?? '',
      watering: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['watering'] ?? '',
      description: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['description'] ?? '',
      category: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['category'] ?? '',
      potSize: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['potSize'] ?? '',
      quantity: wishlistData.where((element) => element['isFav'] == 1).elementAt(idx)['quantity'] ?? 0,
    );
  });
}
  // Future<void> deleteWishlistData(String productId) async {
  //   final localDB = await database;
  //   localDB.delete(
  //     "WishlistData",
  //     where: "productId = ?",
  //     whereArgs: [productId],
  //   );
  //   log("Wishlist Data Deleted");
  //   update();
  // }

  // Future<bool> isProductInWishlist(int productId) async {
  //   final db = await database;
  //   List<Map<String, dynamic>> result = await db.query(
  //     "WishlistData",
  //     where: "productId = ?",
  //     whereArgs: [productId],
  //   );
  //   return result.isNotEmpty;
  // }

  Future<void> insertOrderHistoryData(List<PlantModel> products, String orderId,
      String orderDate, String cartTotal) async {
    final localDB = await database;
    for (var product in products) {
      localDB.insert(
        "OrderHistoryData",
        {
          'orderId': orderId,
          'name': product.name,
          'image': product.image,
          'cartTotal': cartTotal,
          'price': product.price,
          'quantity': product.quantity,
          'orderDate': orderDate,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    log("Order History Data Inserted");
    update();
  }

  // Future<double> getProductPriceFromCartData(String title) async {
  //   final localDB = await database;
  //   List<Map<String, dynamic>> productData = await localDB.query(
  //     "CartData",
  //     where: "title = ?",
  //     whereArgs: [title],
  //   );
  //   if (productData.isNotEmpty) {
  //     return productData.first['price'];
  //   } else {
  //     return 0.0;
  //   }
  // }
Future<List<OrderModel>> fetchOrderHistoryData() async {
  List<OrderModel> orders = [];

  try {
    final db = await database;
    List<Map<String, dynamic>> data = await db.query('OrderHistoryData');
    Map<String, List<Map<String, dynamic>>> orderGroups = {};
    for (var order in data) {
      if (!orderGroups.containsKey(order['orderId'])) {
        orderGroups[order['orderId']] = [];
      }
      orderGroups[order['orderId']]?.add(order);
    }
    for (var orderId in orderGroups.keys) {
      List<Map<String, dynamic>> orderData = orderGroups[orderId]!;
      OrderModel order = OrderModel(
        id: orderId,
        name: orderData.first['name'] ?? '',
        image: orderData.first['image'] ?? '',
        orderDate: orderData.first['orderDate'] ?? '',
        cartTotal: orderData.first['cartTotal'] ?? '',
        price: orderData.first['price'] ?? '',
        plants: [],
      );
      for (var productData in orderData) {
        log('product price : ${productData['price']}');
        log('product productId : ${productData['productId']}');
        log('product title : ${productData['title']}');
        // double price = await getProductPriceFromCartData(productData['title'] ?? '');
        PlantModel product = PlantModel(
          id: int.parse(productData['id'] ?? '0'),
          name: productData['name'] ?? '',
          image: productData['image'] ?? '',
          price: productData['price'],
          isFav: productData['isFav'] == 1, // Corrected line
          height: productData['height'] ?? 0.0,
          soilType: productData['soilType'] ?? '',
          sunlight: productData['sunlight'] ?? '',
          watering: productData['watering'] ?? '',
          description: productData['description'] ?? '',
          category: productData['category'] ?? '',
          potSize: productData['potSize'] ?? '',
          quantity: productData['quantity'] ?? 0,
        );
        order.plants.add(product);
      }
      orders.add(order);
    }
  } catch (e) {
    log('Error fetching order history data: $e');
  }
  return orders;
}
}
