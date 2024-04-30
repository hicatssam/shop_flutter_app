import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';

import '../../models/address.dart';

class SettingsBnScreen extends StatefulWidget {
  const SettingsBnScreen({super.key});

  @override
  State<SettingsBnScreen> createState() => _SettingsBnScreenState();
}

class _SettingsBnScreenState extends State<SettingsBnScreen> {


  int? _SelectedItem;
  bool _isSelected = false;
  List<Address> addresses = <Address>[
    Address(addressId: 1, country: 'Palestine',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 2, country: 'American',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 3, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 4, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 4, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),

  ];
  @override
  void dispose() {
    // TODO: implement dispose
    Navigator.pop(context);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Profile'),
                  onTap: () {
                    // Navigator.pushNamed(context, ScreenKeys.notificationsSettingsScreen);
                  },
                ),
                ListTile(
                  title: const Text('Shipping address'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenKeys.addressScreen);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 170,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text('Ship to'),
                  onTap: () {
                    Scaffold.of(context).showBottomSheet((context) => SingleChildScrollView(
                      child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: double.infinity,
                              height: 400,
                              decoration: const BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Text(
                                        'Ship to',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700),
                                      ),

                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close),
                                        iconSize: 30,
                                      )
                                    ],
                                  ),
                                  const Text(
                                    'Confirm your location for more accurate shipping estimates and wider range of logistic services',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Country / region',
                                        style:
                                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.red,
                                        size: 13,
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: DropdownButton(
                                      value: _SelectedItem,
                                      isExpanded: true,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                      itemHeight: 50,
                                      iconSize: 30,
                                      onTap: () {},
                                      items: addresses
                                          .map((e) => DropdownMenuItem(
                                        value: e.addressId,
                                        child: Text(e.country!),
                                      ))
                                          .toList(),
                                      hint: const Text('Select'),
                                      onChanged: (int? value) {
                                        if (value != null) {
                                          setState(() {
                                            _SelectedItem = value;
                                          });
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  //  Row(
                                  //   mainAxisAlignment: MainAxisAlignment.start,
                                  //   children: [
                                  //     const Text(
                                  //       'Full name',
                                  //       style:
                                  //       TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                                  //     ),
                                  //     const SizedBox(
                                  //       width: 2,
                                  //     ),
                                  //    const Text('(Optional)'),
                                  //     const SizedBox(
                                  //       height: 5,
                                  //     ),
                                  //     SizedBox(
                                  //       width: double.infinity,
                                  //       height: 50,
                                  //       child: TextField(
                                  //         decoration: InputDecoration(
                                  //           hintText: 'First name and last name',
                                  //           border: OutlineInputBorder(
                                  //             borderRadius: BorderRadius.circular(10),
                                  //           ),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                ],
                              ),
                            ),
                          ),
                    ));
                  },
                ),
                ListTile(
                  title: const Text('Currency'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenKeys.addressScreen);
                  },
                  trailing: const Text(
                    'USD',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: const Text('Language'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenKeys.homeScreen);
                  },
                  trailing: const Text(
                    'English',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Notification Settings'),
                  onTap: () {
                    Navigator.pushNamed(
                        context, ScreenKeys.notificationsSettingsScreen);
                  },
                ),
                ListTile(
                  title: const Text('Clear cache'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenKeys.homeScreen);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 170,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Rate Our App'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenKeys.homeScreen);
                  },
                ),
                ListTile(
                  title: const Text('Privacy Policy'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenKeys.homeScreen);
                  },
                ),
                ListTile(
                  title: const Text('Version'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenKeys.homeScreen);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
