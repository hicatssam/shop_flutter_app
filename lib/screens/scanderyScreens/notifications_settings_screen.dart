import 'package:flutter/material.dart';
class NotificationsSettingsScreen extends StatefulWidget {
  const NotificationsSettingsScreen({super.key});

  @override
  State<NotificationsSettingsScreen> createState() => _NotificationsSettingsScreenState();
}

class _NotificationsSettingsScreenState extends State<NotificationsSettingsScreen> {
  bool _isNotificationChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
          children: [
            SwitchListTile(
                title: const Text('Notifications'),
                subtitle: const Text('Disable and Enable Notifications'),
                value: _isNotificationChecked,
                onChanged: (value) {
                  setState(() {
                    _isNotificationChecked = value;
                  });
                }),
      ]),
    );
  }
}
