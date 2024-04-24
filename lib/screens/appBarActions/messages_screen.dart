import 'package:flutter/material.dart';
import 'package:shop_app/models/bn_screen.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/screens/appBarActions/cart_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/favoruite_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/main_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/serach_bn_screen.dart';
import 'package:shop_app/screens/mainScreens/settings_bn_screen.dart';
import 'package:shop_app/widget/app_list_tile.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  int _changedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenKeys.notificationsScreen);
              },
              icon: const Icon(
                Icons.notifications_rounded,
                size: 25,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenKeys.cartBnScreen);

              },
              icon: const Icon(
                Icons.shopping_cart,
                size: 25,
              )),
        ],
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, ScreenKeys.homeScreen);
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: const [
          AppListTile(
            subTitle: 'Smiley’s Store marked your order',
            orderNum: '1585625',
            iconData: Icons.ac_unit,
            period: 'Am',
            time: '9:40',
            color: Colors.orange,
            source: 'ms',
            image: 'images/dress3.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'Smiley’s Store marked your order',
            orderNum: '1585625',
            iconData: Icons.kayaking,
            period: 'Pm',
            time: '12:30',
            color: Colors.cyan,
            source: 'ms',
            image: 'images/dress3.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'Package from your order #1982345 has arrived to destination Area.',
            orderNum: '1585625',
            iconData: Icons.article,
            period: 'Pm',
            time: '10:05',
            color: Colors.yellow,
            source: 'ms',
            image: 'images/dress3.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: '40% OFF of everything at Elegance Store!!',
            orderNum: '1585625',
            iconData: Icons.settings_applications_outlined,
            period: 'Am',
            time: '9:20',
            color: Colors.pinkAccent,
            source: 'ms',
            image: 'images/dress3.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'BOGO Sale starting tomorrow. Don’t forget to check it out for great deals!',
            orderNum: '1585625',
            iconData: Icons.reorder,
            period: 'Am',
            time: '9:30',
            color: Colors.red,
            source: 'ms',
            image: 'images/account_user.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'BOGO Sale starting tomorrow. Don’t forget to check it out for great deals!',
            orderNum: '1585625',
            iconData: Icons.reorder,
            period: 'Am',
            time: '9:30',
            color: Colors.red,
            source: 'ms',
            image: 'images/account_user.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'BOGO Sale starting tomorrow. Don’t forget to check it out for great deals!',
            orderNum: '1585625',
            iconData: Icons.reorder,
            period: 'Am',
            time: '9:30',
            color: Colors.red,
            source: 'ms',
            image: 'images/account_user.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'BOGO Sale starting tomorrow. Don’t forget to check it out for great deals!',
            orderNum: '1585625',
            iconData: Icons.reorder,
            period: 'Am',
            time: '9:30',
            color: Colors.red,
            source: 'ms',
            image: 'images/account_user.jpg',
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
        ],
      ),
    );
  }
}
