import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/collection_card.dart';
import 'package:shop_app/widget/product_card.dart';

class MainBnScreen extends StatefulWidget {
  @override
  State<MainBnScreen> createState() => _MainBnScreenState();

  const MainBnScreen({super.key});
}

class _MainBnScreenState extends State<MainBnScreen>
    with SingleTickerProviderStateMixin {
  static bool _isFavorite = false;
  int _currentPage = 0;

  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  List<Product> menProducts = [
    Product(
      id: 1,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '80',
      colors: [
        Colors.orangeAccent,
        Colors.deepOrange,
        Colors.pink,
        Colors.black,
        Colors.white,
        Colors.cyanAccent,
        Colors.grey,
        Colors.red,
      ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',
    ),
    Product(
      id: 2,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '100', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',
    ),
    Product(
      id: 3,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '120', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),
    Product(
      id: 3,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '120', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),
    Product(
      id: 3,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '120', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),

  ];

  List<Product> womanProducts = [
    Product(
      id: 6,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '80', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),
    Product(
      id: 7,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '100', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),
    Product(
      id: 8,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '120', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),
    Product(
      id: 9,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '70', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),
    Product(
      id: 10,
      image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg','images/men4.jpg','images/men5.jpg'],
      title: 'Classic hoodie',
      description: 'new brand',
      price: '250', colors: [
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.pink,
      Colors.black,
      Colors.white,
      Colors.cyanAccent,
      Colors.grey,
      Colors.red,
    ],
      brandName: 'Manal',
      sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
      isFavorite: true,
      ratting: '4.5',),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          TabBar(
            controller: _tabController,
            physics: const AlwaysScrollableScrollPhysics(),
            indicatorColor: Colors.deepOrange,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            onTap: (int value) {},
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 5,
            labelPadding: const EdgeInsets.all(10),
            splashBorderRadius: BorderRadius.circular(10),
            unselectedLabelStyle: const TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
            tabs: const [
              Text(
                'Recommended ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Popular ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Top brands ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(
                  minHeight: 0,
                  maxHeight: 200,
                  minWidth: 0,
                  maxWidth: double.infinity),
              child: PageView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                pageSnapping: true,
                clipBehavior: Clip.antiAlias,
                onPageChanged: (int value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                children: const [
                  CollectionCard(
                      title: 'New Arrival', image: 'images/collection_a.jpg'),
                  CollectionCard(
                      title: 'New Collection',
                      image: 'images/collection_b.jpg'),
                  CollectionCard(
                      title: 'New Arrival', image: 'images/collection_c.jpg'),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _currentPage == 0 ? Colors.deepOrange : Colors.grey),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _currentPage == 1 ? Colors.deepOrange : Colors.grey),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _currentPage == 2 ? Colors.orange : Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'For men',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        'view more',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
                minHeight: 0,
                maxHeight: 320,
                minWidth: 0,
                maxWidth: double.infinity),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menProducts.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 100 / 50,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, ScreenKeys.productDetailsScreen);
                  },
                  child: ProductCard(
                    id: menProducts[index].id,
                    image: menProducts[index].image.first,
                    title: menProducts[index].title,
                    subTitle: menProducts[index].description,
                    price: menProducts[index].price,
                    type: 'men',
                    colors: const [
                      Colors.deepOrange,
                      Colors.black,
                      Colors.white,
                      Colors.pink,
                      Colors.orangeAccent
                    ],
                    sizes: [],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'For woman',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        'view more',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ],
                  )),
            ],
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
                minHeight: 0,
                maxHeight: 320,
                minWidth: 0,
                maxWidth: double.infinity),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menProducts.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 100 / 50,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  id: womanProducts[index].id,
                  image: womanProducts[index].image.first,
                  title: womanProducts[index].title,
                  subTitle: womanProducts[index].description,
                  price: womanProducts[index].price,
                  type: 'woman',
                  colors: [],
                  sizes: [],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
// GridView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 3,
// shrinkWrap: true,
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 1,
// childAspectRatio: 70 / 130,
// mainAxisSpacing: 10,
// crossAxisSpacing: 10,
// ),
// itemBuilder: (context, index) {
// return GestureDetector(
// onTap: (){
// setState(() {
// _currentPage =index;
// });
// },
// onScaleStart: (details) {
// setState(() {
// _currentPage =index;
// });
// },
// onForcePressStart: (details) {
// setState(() {
// _currentPage =index;
// });
// },
// child: Stack(
// children: [
// Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// image: const DecorationImage(image: AssetImage('images/collection_a.jpg'),fit: BoxFit.fill),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: Align(
// alignment : Alignment.bottomLeft,
// child: SizedBox(
// width : 80,
// height : 40,
// child: Container(
//
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(10),
// ),
// child: const Center(child: Text('New Arrival')),
// ),
// ),
// ),
// ),
// ],
//
// ),
// );
// },
// );
}
