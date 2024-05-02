import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/address.dart';
import 'package:shop_app/models/tag.dart';
import 'package:shop_app/widget/app_textFiled.dart';

class UpdateAddressScreen extends StatefulWidget {
  const UpdateAddressScreen({super.key});

  @override
  State<UpdateAddressScreen> createState() => _UpdateAddressScreenState();
}

class _UpdateAddressScreenState extends State<UpdateAddressScreen> {
  int? _SelectedItem;
  bool _isSelected = false;
  List<Address> addresses = <Address>[
    Address(addressId: 1, country: 'Palestine',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 2, country: 'American',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 3, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 4, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),
    Address(addressId: 4, country: 'Egypt',address: 'Alrashid Street',city: 'Gaza',postalCode: '9990300',state: 'Gaza City'),

  ];
  List<Tag> tags = <Tag>[
    Tag(id: 1, name: 'Business'),
    Tag(id: 2, name: 'American'),
    Tag(id: 3, name: 'Canada'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Update address'),
        leading: IconButton(
            onPressed: () {
              //TODO: Back To previous screen
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text(
                'Your Personal information is encrypted and will only be used for delivery purpose'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                const SizedBox(
                  height: 5,
                ),

                CSCPicker(
                  layout: Layout.horizontal,
                  onCountryChanged: (country){},
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

              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       const Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Full name',
          //             style:
          //                 TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          //           ),
          //           SizedBox(
          //             width: 2,
          //           ),
          //           Icon(
          //             Icons.star,
          //             color: Colors.red,
          //             size: 13,
          //           )
          //         ],
          //       ),
          //       const SizedBox(
          //         height: 5,
          //       ),
          //       SizedBox(
          //         width: double.infinity,
          //         height: 40,
          //         child: TextField(
          //           decoration: InputDecoration(
          //             hintText: 'First name and last name',
          //             border: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(10),
          //             ),
          //               contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10)
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       const Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Phone number',
          //             style:
          //                 TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          //           ),
          //           SizedBox(
          //             width: 2,
          //           ),
          //           Icon(
          //             Icons.star,
          //             color: Colors.red,
          //             size: 13,
          //           )
          //         ],
          //       ),
          //       const SizedBox(
          //         height: 5,
          //       ),
          //       SizedBox(
          //         width: double.infinity,
          //         height: 40,
          //         child: AppTextFiled(label: '', hintText: 'hintText', prefixIcon: Icons.ac_unit_outlined, textEditingController: TextEditingController(), keyboardType: TextInputType.text, obscureText: true)
          //       ),
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
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
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Street address/P.O box',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10)
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                          'Apartment, suite, unit, or building (optional)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Postal code',
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
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Please enter',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10)
                    ),
                  ),
                ),
                const Text(
                  'A vaild postal code is required to ship your order',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Tag',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter full name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10)
                    ),
                  ),
                ),
              ],
            ),
          ),
          CheckboxListTile(
            checkColor: Colors.white,
            checkboxShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            title: const Text('Set as default shipping address'),
            onChanged: ( value) {
              setState(() {
                _isSelected = value!;
              });
            },
            value: _isSelected,
            activeColor: Colors.black87,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {

          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              elevation: 10,
              minimumSize: const Size(double.infinity, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
          child: const Text('Save'),

        ),
      ),
    );
  }
}
