import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/screens/mainScreens/launch-screen.dart';
import 'package:shop_app/screens/mainScreens/home_screen.dart';
import 'package:shop_app/screens/mainScreens/login_screen.dart';
import 'package:shop_app/screens/mainScreens/register_screen.dart';
import 'package:shop_app/screens/forgetPassword_screen.dart';
import 'package:shop_app/screens/resetPassword_screen.dart';
import 'package:shop_app/screens/successful_check_out_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: ScreenKeys.homeScreen,
      debugShowCheckedModeBanner: false,
      routes: {
        ScreenKeys.lauchScreen : (context) => const LaunchScreen(),
        ScreenKeys.loginScreen : (context) => const LoginScreen(),
        ScreenKeys.registerScreen : (context) => const RegisterScreen(),
        ScreenKeys.homeScreen : (context) => const HomeScreen(),
        ScreenKeys.resetPasswordScreen : (context) => const ResetPasswordScreen(),
        ScreenKeys.forgetPasswordScreen : (context) => const ForgetPasswordScreen(),
        ScreenKeys.successfulCheckOutScreen : (context) => const SuccessfulCheckOutScreen(),
      },
    );
  }

}

