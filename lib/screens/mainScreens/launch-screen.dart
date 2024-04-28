import 'package:flutter/material.dart';
import 'package:shop_app/prefs/SharedPrefsContoller.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        String route = SharedPrefsController().isLoogedIn ? '/HomeScreen' : '/LoginScreen';
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Rahaf Shop',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                fontFamily: 'FjallaOne',
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
