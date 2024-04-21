
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';


class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});
  
  
  
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}
late TabController _tapControlelr;



class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    bool _isColorSelected = true;
    bool _isSizeSelected = true;
  

    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
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
                currentAccountPictureSize: Size(4, 5),
                onDetailsPressed: () {
                  Navigator.pushReplacementNamed(
                      context, ScreenKeys.searchBnScreen);
                },
                decoration: const BoxDecoration(
                  color: Colors.orange,
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
        
        body: Column(
          children: [
            Expanded(
                child: Image.asset(
              'images/dress_9.jpg',
              fit: BoxFit.fill,
              width: double.infinity,
              height: 400,
            )),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //       backgroundColor: Colors.white),
                        //   child: const Text(
                        //     'Product',
                        //     style: TextStyle(color: Colors.red),
                        //   ),
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //       backgroundColor: Colors.white),
                        //   child: const Text(
                        //     'Details',
                        //     style: TextStyle(color: Colors.red),
                        //   ),
                        // ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Party Dress',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 35,
                              )),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SELECT COLOR',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '₪159',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                     const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ElevatedButton(
                          //   onPressed: () {
                          //     setState(() {
                          //       if(_isColorSelected){
                          //         _isColorSelected = false;
                          //       }else{
                          //         _isColorSelected = true;
                          //       }
                          //     });
                          //   },
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.pink,
                          //     elevation: 3,
                          //     shadowColor: Colors.white,
                          //     shape: const CircleBorder(
                          //       side: BorderSide(
                          //         width: 0,
                          //         color: Colors.white,
                          //         strokeAlign: 0,
                          //       ),
                          //     ),
                          //     minimumSize: const Size(50, 50),
                          //   ),
                          //   child: _isColorSelected ? const Icon(Icons.check_circle_outline_sharp) : null,
                          // ),
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.black,
                          //     elevation: 3,
                          //     shadowColor: Colors.white,
                          //     shape: const CircleBorder(
                          //       side: BorderSide(
                          //         width: 0,
                          //         color: Colors.white,
                          //         strokeAlign: 0,
                          //       ),
                          //     ),
                          //     minimumSize: const Size(50, 50),
                          //   ),
                          //   child: _isColorSelected ? const Icon(Icons.check_circle_outline_sharp) : null,
                          // ),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     setState(() {});
                          //   },
                          //   child: null,
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.white,
                          //     elevation: 3,
                          //     shadowColor: Colors.white,
                          //     shape: const CircleBorder(
                          //       side: BorderSide(
                          //         width: 0,
                          //         color: Colors.white,
                          //         strokeAlign: 0,
                          //       ),
                          //     ),
                          //     minimumSize: const Size(50, 50),
                          //   ),
                          // ),
                          // ElevatedButton(
                          //   onPressed: () {},
                          //   child: null,
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.blue,
                          //     elevation: 3,
                          //     shadowColor: Colors.white,
                          //     shape: const CircleBorder(
                          //       side: BorderSide(
                          //         width: 0,
                          //         color: Colors.white,
                          //         strokeAlign: 0,
                          //       ),
                          //     ),
                          //     minimumSize: const Size(50, 50),
                          //   ),
                          // ),

                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Row(
                        children: [
                          Text('SELECT SIZE (US)'),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 3,
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize:  Size(80, 40),
                            ),
                            child: const Text(
                              'Small',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 3,
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(80, 40),
                            ),
                            child: const Text(
                              'Medium',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 3,
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(80, 40),
                            ),
                            child: const Text(
                              'Large',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 3,
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(80, 40),
                            ),
                            child: const Text(
                              'XLarge',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 3,
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(80, 50),
                            ),
                            child:  const Row(

                              children: [
                                Text('Bocket Now',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700)),
                                SizedBox(width: 4,),
                                Icon(Icons.arrow_circle_right),

                              ],),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              elevation: 3,
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(80, 50),
                            ),
                            child:  const Row(

                              children: [
                              Text('Add To Cart',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w700)),
                              SizedBox(width: 4,),
                              Icon(Icons.arrow_circle_right),

                            ],),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

    );
  }
}
