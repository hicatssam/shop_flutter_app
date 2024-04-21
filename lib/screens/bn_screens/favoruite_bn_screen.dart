import 'package:flutter/material.dart';
import 'package:shop_app/widget/favourite_list_tile_card.dart';

class FavouriteBnScreen extends StatefulWidget {
  const FavouriteBnScreen({super.key});

  @override
  State<FavouriteBnScreen> createState() => _FavouriteBnScreenState();
}

class _FavouriteBnScreenState extends State<FavouriteBnScreen> {
  bool _isFavourite = false;

  List<FavouriteListTileCard> listFavorite = [
    FavouriteListTileCard(
        title: 'Evening Dress',
        image: 'images/dress1.jpg',
        price: '300',
        ratting: '4.8',
        subTitle: 'Small,Red'),
    FavouriteListTileCard(
        title: 'Party Dress',
        image: 'images/dress1.jpg',
        price: '450',
        ratting: '4.5',
        subTitle: 'Small,Red'),
    FavouriteListTileCard(
        title: 'Short Dress',
        image: 'images/dress1.jpg',
        price: '180',
        ratting: '3.8',
        subTitle: 'Small,Red'),
    FavouriteListTileCard(
        title: 'Short Dress',
        image: 'images/dress1.jpg',
        price: '180',
        ratting: '3.8',
        subTitle: 'Small,Red'),
    FavouriteListTileCard(
        title: 'Short Dress',
        image: 'images/dress1.jpg',
        price: '180',
        ratting: '3.8',
        subTitle: 'Small,Red'),
    FavouriteListTileCard(
        title: 'Short Dress',
        image: 'images/dress1.jpg',
        price: '180',
        ratting: '3.8',
        subTitle: 'Small,Red'),
    FavouriteListTileCard(
        title: 'Short Dress',
        image: 'images/dress1.jpg',
        price: '180',
        ratting: '3.8',
        subTitle: 'Small,Red'),
    FavouriteListTileCard(
        title: 'Short Dress',
        image: 'images/dress1.jpg',
        price: '180',
        ratting: '3.8',
        subTitle: 'Small,Red'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    listFavorite.removeWhere((element) => true);
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 10, backgroundColor: Colors.pink),
                child: const Text('Clear All'),
              ),
            ],
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listFavorite.length,
            itemBuilder: (context, index) {
              return listFavorite.elementAt(index);
            },
          ),
        ],
      ),
    );
  }
// padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// ElevatedButton(
// onPressed: () {},
// style: ElevatedButton.styleFrom(
// backgroundColor: Colors.red,
// elevation: 10,
// ),
// child: const Text('Clear All'),
// ),
// ],
// ),
// FavouriteListTileCard(
// title: 'Evening Dress',
// image: 'images/dress1.jpg',
// price: '250',
// ratting: '4.5',
// subTitle: 'Small,Red'),
// FavouriteListTileCard(
// title: 'Evening Dress',
// image: 'images/dress2.jpg',
// price: '250',
// ratting: '4.8',
// subTitle: 'Small,Red'),
// FavouriteListTileCard(
// title: 'Evening Dress',
// image: 'images/dress1.jpg',
// price: '250',
// ratting: '4.8',
// subTitle: 'Small,Red'),
// FavouriteListTileCard(
// title: 'Evening Dress',
// image: 'images/dress3.jpg',
// price: '250',
// ratting: '4.8',
// subTitle: 'Small,Red'),
// FavouriteListTileCard(
// title: 'Evening Dress',
// image: 'images/dress1.jpg',
// price: '250',
// ratting: '4.8',
// subTitle: 'Small,Red'),
// ],
}
