
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profilecontroller.dart';
import '../widget.dart';
import 'contactusscreen.dart';
import 'manageaccountscreen.dart';
import 'orderhistoryscreen.dart';
import 'wishlistscreen.dart';
import 'aboutscreen.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: shadedContainer(
          positions: [
            PositionedPosition.topLeft,
            PositionedPosition.bottomRight
          ],
          Padding(
            padding: const EdgeInsets.only(
                top: 120, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.grey[
                        300],
                    child: const Icon(
                      Icons.person, 
                      size: 60,
                    ),
                  ),
                ),
                sizedBox20(),
                sizedBox20(),
                GetBuilder<ProfileController>(
                  builder: (controller) {
                    if (controller.loggedInUser != null) {
                      return Column(
                        children: [
                          Text(
                            'Hey! ${controller.loggedInUser!.name}',
                            style: textStyleHeadingData(),
                          ),
                          sizedBox20()
                        ],
                      );
                    } else {
                      return const Center(
                        child: Text('Logged in as Guest..'),
                      );
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart_outlined),
                  title: Text(
                    'Order History',
                    style: textStyleData16(),
                  ),
                  onTap: () {
                    Get.to(() => const OrderHistoryScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.account_box),
                  title: Text(
                    'Manage Account',
                    style: textStyleData16(),
                  ),
                  onTap: () {
                    Get.to(() => const ManageAccountScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.favorite_outline_outlined),
                  title: Text(
                    'Wishlist',
                    style: textStyleData16(),
                  ),
                  onTap: () {
                    Get.to(() => const WishlistScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help),
                  title: Text(
                    'Help & Support',
                    style: textStyleData16(),
                  ),
                  onTap: () {
                    Get.to(() => const ContactUsScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: Text(
                    'About Us',
                    style: textStyleData16(),
                  ),
                  onTap: () {
                    Get.to(() => const AboutScreen());
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
