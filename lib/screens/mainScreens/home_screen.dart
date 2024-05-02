import 'package:flutter/material.dart';
import 'package:shop_app/models/bn_screen.dart';
import 'package:shop_app/prefs/SharedPrefsContoller.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/screens/bn_screens/favoruite_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/main_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/serach_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/settings_bn_screen.dart';

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
        backgroundColor: Colors.deepOrange,
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
              currentAccountPictureSize: const Size(100, 100),
              onDetailsPressed: () {

              },
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
              ),
              currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(image: AssetImage('Images'))
                    ),
                  )
              ),
              accountName: const Text('images/account_user.jpg'),
              accountEmail:  Text(SharedPrefsController().email),
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
                ),
            onTap: (){

            },),
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
            // ListTile(
            //     leading: const Icon(Icons.settings),
            //     title: const Text('Settings'),
            //     trailing: IconButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, ScreenKeys.settingsBnScreen);
            //       },
            //       icon: const Icon(Icons.arrow_forward_ios_outlined),
            //     )),
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
                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                ),onTap: (){
              Navigator.pushNamed(context, ScreenKeys.infoScreen);

            }),
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

                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                ),onTap: (){
              Navigator.pushNamed(context, ScreenKeys.faqsScreen);
            },),
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
                    // Future.delayed(const Duration(seconds: 1),(){
                    //   SharedPrefsController().removeKey(key: PrefKeys.loggedIn.toString());
                    //   SharedPrefsController().logOut();
                    //   Navigator.pushNamed(context, ScreenKeys.loginScreen);
                    // });

                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                ),
            onTap: (){
              Future.delayed(const Duration(seconds: 1),(){
                SharedPrefsController().removeKey(key: PrefKeys.loggedIn.toString());
                SharedPrefsController().logOut();
                Navigator.pushReplacementNamed(context, ScreenKeys.loginScreen);
              });
            },),
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
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              activeIcon: Icon(
                Icons.search_sharp,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'Favorite',
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
              activeIcon: Icon(
              Icons.settings,
              color: Colors.white,
              )),
        ],
      ),
      body: bnScreensList[_changedPage].widget,
    );
  }
}
