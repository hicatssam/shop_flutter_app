import 'package:flutter/material.dart';
import 'package:shop_app/models/bn_screen.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/screens/bn_screens/cart_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/favoruite_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/main_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/serach_bn_screen.dart';
import 'package:shop_app/screens/mainScreens/settings_bn_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _changedPage = 0;

  final List<BnScreen> bnScreensList = <BnScreen>[
    BnScreen(title: 'Home Screen', widget: const MainBnScreen()),
    BnScreen(title: 'Search Screen', widget: const SearchBnScreen()),
    BnScreen(title: 'Favorite Screen', widget: const FavouriteBnScreen()),
    BnScreen(title: 'Settings Screen', widget: const SettingsBnScreen()),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bnScreensList[_changedPage].title),
        backgroundColor: Colors.orange,
        actions:[
          IconButton(onPressed: (){
            Navigator.pushNamed(context, ScreenKeys.notificationsScreen);
          }, icon: const Icon(Icons.notifications,size: 25,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, ScreenKeys.messagesScreen);
          }, icon: const Icon(Icons.messenger,size: 25,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, ScreenKeys.cartBnScreen);
          }, icon: const Icon(Icons.shopping_cart,size: 25,)),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 10,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.white,
              currentAccountPictureSize: const Size(70, 70),
              onDetailsPressed: () {
                Navigator.pushReplacementNamed(context, ScreenKeys.searchBnScreen);
              },
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              currentAccountPicture: CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                'images/account.png',
              ),),
              accountName: const Text('Hicats Sam'),
              accountEmail: const Text('example@mail.com'),
            ),
            ListTile(
                leading: const Icon(Icons.reorder),
                title: const Text('All My Orders',),
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
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenKeys.settingsBnScreen);
                  },
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
            ),ListTile(
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
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenKeys.infoScreen);
                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
            const Divider(
              height: 5,
              color: Colors.grey,
              endIndent: 2,
              indent: 2,
            ),
            ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('Faqs'),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenKeys.faqsScreen);
                  },
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
                    Future.delayed(const Duration(seconds: 1),(){
                      Navigator.pushNamed(context, ScreenKeys.loginScreen);
                    });

                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: _changedPage,
        onTap: (value) {
          setState(() {
            _changedPage = value;
          });
        },
        showSelectedLabels: true,
        iconSize: 30,
        selectedLabelStyle: const TextStyle(
          color: Colors.black
        ),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Colors.orange,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              activeIcon: Icon(
                Icons.search_sharp,
                color: Colors.orange,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'Favorite',
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.orange,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
              activeIcon: Icon(
              Icons.settings,
              color: Colors.orange,
              )),
        ],
      ),
      body: bnScreensList[_changedPage].widget,
    );
  }
}
