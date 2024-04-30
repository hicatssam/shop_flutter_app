import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shop_app/models/tag.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/models/product.dart';

class ProductDetailsScreen extends StatefulWidget {



  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();

  const ProductDetailsScreen({super.key});
}

late TabController _tapControlelr;

int _currentPage = 0;
bool _isFavorite = false;
List<Product> products = [
  Product(
    id: 1,
    image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg'],
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
    brandName: 'Addi',
    ratting: '4.5',
    sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
    isFavorite: true,
  ),
  Product(
    id: 1,
    image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg'],
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
    brandName: 'Addi',
    ratting: '4.5',
    sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
    isFavorite: true,
  ),
  Product(
    id: 1,
    image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg'],
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
    brandName: 'Addi',
    ratting: '4.5',
    sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
    isFavorite: true,
  ),
  Product(
    id: 1,
    image: ['images/men1.jpg','images/men2.jpg','images/men3.jpg'],
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
    brandName: 'Addi',
    ratting: '4.5',
    sizes: ['S', 'L', 'M', 'XL', 'XXL', 'XXXL'],
    isFavorite: true,
  ),
];

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isColorSelected = true;
    bool _isSizeSelected = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenKeys.notificationsScreen);
              },
              icon: const Icon(
                Icons.notifications,
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
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenKeys.cartBnScreen);
              },
              icon: const Icon(
                Icons.shopping_cart,
                size: 25,
              )),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 10,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.white,
              currentAccountPictureSize: const Size(4, 5),
              onDetailsPressed: () {
                Navigator.pushReplacementNamed(
                    context, ScreenKeys.searchBnScreen);
              },
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                child: Image.asset(
                  'images/account.png',
                ),
              ),
              accountName: const Text('Hicats Sam'),
              accountEmail: const Text('example@mail.com'),
            ),
            ListTile(
                leading: const Icon(Icons.reorder),
                title: const Text(
                  'All My Orders',
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.local_shipping_outlined),
                title: const Text('Pending Shipments'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.add_comment_outlined),
                title: const Text('Invite Friends'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.support_agent),
                title: const Text('Customer Support'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.star_rate_outlined),
                title: const Text('Rate Our App'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Info'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.output),
                title: const Text('Log Out'),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenKeys.loginScreen);
                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
          ],
        ),
      ),
      drawerEdgeDragWidth: 10,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 350,
              child: Stack(
                children: [
                  PageView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (int currentPage){
                      setState(() {
                        _currentPage = currentPage;
                      });
                    },
                    children: [
                      Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(products.first.image.first),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(products[2].image[1]),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(products[3].image[2]),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentPage==0 ?Colors.white : Colors.grey
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  _currentPage==1 ?Colors.white : Colors.grey
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentPage==2 ?Colors.white : Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],

              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      products.first.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      products.first.brandName,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      products.first.ratting,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.orangeAccent,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      size: 35,
                      color: Colors.black54,
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isFavorite ? _isFavorite = false : _isFavorite = true;
                    });
                  },
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.deepOrange,
                    size: 35,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      products.first.description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(

                  children: [
                    const Text(
                      'Price',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      products.first.price,
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],),

              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Colors',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            children: const [
                              CircleAvatar(backgroundColor: Colors.red),
                              SizedBox(width: 3,),
                              CircleAvatar(backgroundColor: Colors.orange),
                              SizedBox(width: 3,),
                              CircleAvatar(backgroundColor: Colors.blue),
                              SizedBox(width: 3,),
                              CircleAvatar(backgroundColor: Colors.red),
                              SizedBox(width: 3,),
                              CircleAvatar(backgroundColor: Colors.black),
                              SizedBox(width: 3,),
                              CircleAvatar(backgroundColor: Colors.pink),
                              SizedBox(width: 3,),
                              CircleAvatar(backgroundColor: Colors.cyan),

                            ],
                          ),
                        )

                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Sizes',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            children:  [
                             TextButton(onPressed: (){}, child: const Text('S',style: TextStyle(color: Colors.black,fontSize: 15),),),
                             TextButton(onPressed: (){}, child: const Text('M',style: TextStyle(color: Colors.black,fontSize: 15),),),
                             TextButton(onPressed: (){}, child: const Text('L',style: TextStyle(color: Colors.black,fontSize: 15),),),
                             TextButton(onPressed: (){}, child: const Text('XL',style: TextStyle(color: Colors.black,fontSize: 15),),),
                             TextButton(onPressed: (){}, child: const Text('XXL',style: TextStyle(color: Colors.black,fontSize: 15),),),

                            ],
                          ),
                        )

                      ],
                    ),
                  ),

                ],
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {
        Navigator.pushReplacementNamed(context, ScreenKeys.cartBnScreen);
      },child: const Text('Add To Card')),
    );
  }
}
