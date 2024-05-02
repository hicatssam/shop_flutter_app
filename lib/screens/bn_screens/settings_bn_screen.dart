import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_picker_bottom_sheet.dart';
import 'package:country_currency_pickers/currency_picker_dialog.dart';
import 'package:country_currency_pickers/currency_picker_dropdown.dart';
import 'package:country_currency_pickers/utils/utils.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/language.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/app_textFiled.dart';

import '../../models/address.dart';

class SettingsBnScreen extends StatefulWidget {
  const SettingsBnScreen({super.key});

  @override
  State<SettingsBnScreen> createState() => _SettingsBnScreenState();
}

class _SettingsBnScreenState extends State<SettingsBnScreen> {


  int? _SelectedItem;
  bool _isSelected = false;
  String? _countrySelected ;
  String? _currencySelected;
  String? country;
  String currency= 'USD';

  List<Address> addresses = <Address>[
    Address(addressId: 1, country: 'Palestine',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 2, country: 'American',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 3, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 4, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 4, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
  ];

  List<Language> languages = <Language>[
    Language(languageId: 1, language: 'Arabic'),
    Language(languageId: 2, language: 'English'),
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
                    Navigator.pushNamed(context, ScreenKeys.profileScreen);
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
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Ship to',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),

                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.close,color: Colors.red,),
                                    iconSize: 33,
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
                              CSCPicker(
                                currentCountry: _countrySelected,
                                showCities: false,
                                showStates: false,
                                layout: Layout.horizontal,
                                onCountryChanged: (country){
                                  setState(() {
                                    if(country!=null){
                                      _countrySelected = country;
                                    }

                                  });
                                },
                                onStateChanged: (state){},
                                onCityChanged: (city){},
                                dropdownDecoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                ),
                                disabledDropdownDecoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,
                                ),


                              ),
                              const SizedBox(height: 10,),

                              const SizedBox(height: 10,),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 45),shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )),
                                  onPressed: (){
                                    Navigator.pop(context);
                                    setState(() {
                                      country=_countrySelected;
                                    });

                                  }, child: const Text('Save')),
                            ],
                          ),
                        ),
                      ),
                    ),
                        constraints: const BoxConstraints(
                            maxWidth: double.infinity,
                            minHeight: 0,
                            minWidth: 0,
                            maxHeight: 380
                        ));
                  },
                  trailing:  Text(
                    country ==null ? 'noCountry' : country!,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: const Text('Currency'),
                  onTap: () {
                    Scaffold.of(context).showBottomSheet((context) => SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Currency',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),

                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.close,color: Colors.red,),
                                    iconSize: 33,
                                  )
                                ],
                              ),
                              const Text(
                                'Choose your app currency ',
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
                                    'Currency',
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
                              CurrencyPickerDropdown(
                                itemBuilder: _buildCurrencyDropdownItem,
                                initialValue: 'USD',
                                onValuePicked: (currency) {
                                    setState(() {
                                      _currencySelected = currency?.currencyCode;
                                    });
                                },
                              ),
                              const SizedBox(height: 10,),
                              const SizedBox(height: 10,),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 45),shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )),
                                  onPressed: (){
                                    Navigator.pop(context);
                                    setState(() {
                                      currency =_currencySelected!;
                                    });

                                  }, child: const Text('Save')),
                            ],
                          ),
                        ),
                      ),
                    ),
                        constraints: const BoxConstraints(
                            maxWidth: double.infinity,
                            minHeight: 0,
                            minWidth: 0,
                            maxHeight: 380
                        ));


                  },
                  trailing:  Text(
                    currency,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: const Text('Language'),
                  onTap: () {
                    Scaffold.of(context).showBottomSheet((context) => SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Language',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),

                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.close,color: Colors.red,),
                                    iconSize: 33,
                                  )
                                ],
                              ),
                              const Text(
                                'Choose your app language ',
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
                                    'Language',
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
                              DropdownButton(items: [

                              ], onChanged: (value) {

                              },),
                              const SizedBox(height: 10,),
                              const SizedBox(height: 10,),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 45),shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )),
                                  onPressed: (){
                                    Navigator.pop(context);
                                    setState(() {
                                      currency =_currencySelected!;
                                    });

                                  }, child: const Text('Save')),
                            ],
                          ),
                        ),
                      ),
                    ),
                        constraints: const BoxConstraints(
                            maxWidth: double.infinity,
                            minHeight: 0,
                            minWidth: 0,
                            maxHeight: 380
                        ));
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
Widget _buildCurrencyDropdownItem(Country country) => Container(
  child: Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      const SizedBox(
        width: 8.0,
      ),
      Text("${country.currencyCode}"),
    ],
  ),
);
