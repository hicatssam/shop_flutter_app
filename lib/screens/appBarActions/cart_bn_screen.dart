import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';

import 'package:shop_app/widget/cart_list_tile_card.dart';

class CartBnScreen extends StatefulWidget {
  const CartBnScreen({super.key});

  @override
  State<CartBnScreen> createState() => _CartBnScreenState();
}

class _CartBnScreenState extends State<CartBnScreen> {
  bool _isFavourite = false;

  List<CartListTileCard> listFavorite = [
    const CartListTileCard(
        title: 'Evening Dress',
        image: 'images/dress1.jpg',
        price: '250',
        subTitle: 'Small,Red'),
    const CartListTileCard(
        title: 'Evening Dress',
        image: 'images/dress1.jpg',
        price: '250',
        subTitle: 'Small,Red'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
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
                Navigator.pushNamed(context, ScreenKeys.messagesScreen);

              },
              icon: const Icon(
                Icons.messenger,
                size: 25,
              )),
        ],
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, ScreenKeys.homeScreen);
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 10,
                ),
                child: const Text('Clear All'),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          const CartListTileCard(
              title: 'Evening Dress',
              image: 'images/dress1.jpg',
              price: '250',
              subTitle: 'Small,Red'),
          const CartListTileCard(
              title: 'Evening Dress',
              image: 'images/dress2.jpg',
              price: '250',
              subTitle: 'Small,Red'),
          const CartListTileCard(
              title: 'Evening Dress',
              image: 'images/dress1.jpg',
              price: '250',
              subTitle: 'Small,Red'),
          const CartListTileCard(
              title: 'Evening Dress',
              image: 'images/dress3.jpg',
              price: '250',
              subTitle: 'Small,Red'),
          const CartListTileCard(
            title: 'Evening Dress',
            image: 'images/dress1.jpg',
            price: '250',
            subTitle: 'Small,Red',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('₪99.22',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.grey),),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 10,
                    padding: const EdgeInsets.all(10),
                  ),
                  child: const Row(
                    children: [
                      Text('Check Out',style: TextStyle(fontSize: 20),),
                      SizedBox(width: 8,),
                      Icon(Icons.arrow_circle_right)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
