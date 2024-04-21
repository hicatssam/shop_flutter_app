import 'package:flutter/material.dart';

class SettingsBnScreen extends StatefulWidget {
  const SettingsBnScreen({super.key});

  @override
  State<SettingsBnScreen> createState() => _SettingsBnScreenState();
}

class _SettingsBnScreenState extends State<SettingsBnScreen> {
  bool _isNotificationChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [

          SwitchListTile(
              title: const Text('Notifications'),
              subtitle: const Text('Disable and Enable Notifications'),
              value: _isNotificationChecked,
              onChanged: (value) {
                setState(() {
                  _isNotificationChecked = value;
                });
              })
        ],
      ),
    );
  }
}
