import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/app_list_tile.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int _changedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenKeys.messagesScreen);
              },
              icon: const Icon(
                Icons.messenger,
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
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'Smiley’s Store marked your order',
            orderNum: '1585625',
            iconData: Icons.kayaking,
            period: 'Pm',
            time: '12:30',
            color: Colors.cyan,
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'Package from your order #1982345 has arrived to destination Area.',
            orderNum: '1585625',
            iconData: Icons.article,
            period: 'Pm',
            time: '10:05',
            color: Colors.yellow,
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: '40% OFF of everything at Elegance Store!!',
            orderNum: '1585625',
            iconData: Icons.settings_applications_outlined,
            period: 'Am',
            time: '9:20',
            color: Colors.pinkAccent,
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
          AppListTile(
            subTitle: 'BOGO Sale starting tomorrow. Don’t forget to check it out for great deals!',
            orderNum: '1585625',
            iconData: Icons.reorder,
            period: 'Am',
            time: '9:30',
            color: Colors.red,
          ),
          Divider(height: 30, indent: 10, endIndent: 10, thickness: 1),
        ],
      ),
    );
  }
}
