import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';

class SettingsBnScreen extends StatefulWidget {
  const SettingsBnScreen({super.key});

  @override
  State<SettingsBnScreen> createState() => _SettingsBnScreenState();
}

class _SettingsBnScreenState extends State<SettingsBnScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [

            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ScreenKeys.notificationsSettingsScreen);
                },
                child: const ListTile(
                  title: Text('Notification setting'),
                  style: ListTileStyle.list,
                )),
            const Divider(
              height: 1,
              thickness: 2,
              color: Colors.grey,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {

                },
                child: const ListTile(
                  title: Text('Deliver To'),
                  trailing: Icon(
                    Icons.flag,
                    color: Colors.white,
                  ),
                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, routeName)
                },
                child: const ListTile(
                  title: Text('Shipment address'),

                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: const ListTile(
                  title: Text('Currency'),
                  trailing: Text('USD'),
                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: const ListTile(
                  title: Text('Language'),
                  trailing: Text('English'),
                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: const ListTile(
                  title: Text('Change Password'),
                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: const ListTile(
                  title: Text('Delete account'),
                  style: ListTileStyle.drawer,
                )),
            const Divider(
              height: 2,
              thickness: 3,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: const ListTile(
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Version'),
                      Text('8.40.5'),
                    ],
                  ),
                  trailing: Text('Update'),
                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: const ListTile(
                  title: Text('Rate the app'),
                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent
                    ),
                onPressed: () {},
                child: const ListTile(
                  title: Text('Clear app cache'),
                  style: ListTileStyle.drawer,
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: const Text('Sign out')),
          ]),
    );

  }

}

