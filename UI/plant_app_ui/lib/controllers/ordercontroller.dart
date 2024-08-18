import 'dart:developer';
import 'package:get/get.dart';
import '../model/orderhistorymodel.dart';
import 'databasecontroller.dart';

class OrderController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<OrderModel> orderList = <OrderModel>[].obs;

  void addOrderToHistory(OrderModel order) async {
    orderList.add(order);
    DatabaseController databaseController = Get.find();
    log(
      'cart Total in addorderhistory: ${order.cartTotal.toString()}',
    );
    databaseController.insertOrderHistoryData(
        order.plants, order.id, order.orderDate, order.cartTotal.toString());
          update(); // Add this line to update the UI

  }

  void removeOrderFromHistory(int index) {
    orderList.removeAt(index);
      update(); // Add this line to update the UI

  }

  Future<List<OrderModel>> fetchOrderList() async {
    isLoading(true); // Set isLoading to true using RxBool method

    try {
      DatabaseController databaseController = Get.find();
      orderList.value = await databaseController.fetchOrderHistoryData();
    } catch (e) {
      log('Error fetching order history: $e');
    } finally {
         isLoading(false); // Set isLoading to false using RxBool method

    }
    return orderList;
  }
}
