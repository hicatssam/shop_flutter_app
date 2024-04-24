import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/app_textFiled.dart';

class SuccessfulCheckOutScreen extends StatefulWidget {
  const SuccessfulCheckOutScreen({super.key});

  @override
  State<SuccessfulCheckOutScreen> createState() => _SuccessfulCheckOutScreenState();
}

class _SuccessfulCheckOutScreenState extends State<SuccessfulCheckOutScreen> {

  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: Column(
          children: [
            Text('Successful')
          ],
        ),
        ),
      ),
    );
  }




  void login() {
    Navigator.pushReplacementNamed(context, ScreenKeys.loginScreen);
  }


}


