import 'package:flutter/material.dart';
import 'package:shop_app/models/address.dart';
import 'package:shop_app/models/tag.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  int? _SelectedItem;
  bool _isSelected = false;
  List<Address> addresses = <Address>[
    Address(id: 1, name: 'Palestine'),
    Address(id: 2, name: 'American'),
    Address(id: 3, name: 'Canada'),
    Address(id: 4, name: 'Egypt'),
    Address(id: 5, name: 'Turkia'),
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
        backgroundColor: Colors.orange,
        title: const Text('Add a new address'),
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
                              value: e.id,
                              child: Text(e.name),
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
                      'Full name',
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
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'First name and last name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Phone number',
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
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Please enter',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Street address/P.O box',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                          'Apartment, suite, unit, or building (optional)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'State/ province',
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
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Please select',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'City',
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
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Please enter',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Please enter',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'First name and last name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
          child: const Text('Add address'),

        ),
      ),
    );
  }
}
