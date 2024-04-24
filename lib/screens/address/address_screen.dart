import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/app_list_tile.dart';
import 'package:shop_app/widget/app_textFiled.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool _isNotificationChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text('Shipping address'),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Card(
              elevation: 10,
              shadowColor: Colors.cyan,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: ListTile(
                  style: ListTileStyle.drawer,
                  leading: const Icon(Icons.edit_location_alt_outlined),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Louay Wesam Miqadd',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                          'Beach Camp ,Gaza Strip, Gaza, Gaza, State of palestine, 9990300'),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(30, 30),
                          backgroundColor: Colors.cyan,
                        ),
                        child: const Text('Business'),
                      ),
                    ],
                  ),
                  trailing: const Text('+972569896990',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context,ScreenKeys.addAddressScreen);
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
