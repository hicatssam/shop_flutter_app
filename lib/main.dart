import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/screens/bn_screens/cart_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/favoruite_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/main_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/serach_bn_screen.dart';
import 'package:shop_app/screens/faqs_screens/faqs_screen.dart';
import 'package:shop_app/screens/info_screens/InfoScreen.dart';
import 'package:shop_app/screens/mainScreens/launch-screen.dart';
import 'package:shop_app/screens/mainScreens/home_screen.dart';
import 'package:shop_app/screens/mainScreens/login_screen.dart';
import 'package:shop_app/screens/mainScreens/messages_screen.dart';
import 'package:shop_app/screens/mainScreens/notifications_screen.dart';
import 'package:shop_app/screens/mainScreens/product_details_screen.dart';
import 'package:shop_app/screens/mainScreens/register_screen.dart';
import 'package:shop_app/screens/forgetPassword_screen.dart';
import 'package:shop_app/screens/mainScreens/settings_bn_screen.dart';
import 'package:shop_app/screens/onBoardringScreens/onBoardringScreen.dart';
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
      initialRoute: ScreenKeys.outBoardringScreen,
      debugShowCheckedModeBanner: false,
      routes:{
        ScreenKeys.lauchScreen : (context) => const LaunchScreen(),
        ScreenKeys.loginScreen : (context) => const LoginScreen(),
        ScreenKeys.registerScreen : (context) => const RegisterScreen(),
        ScreenKeys.homeScreen : (context) => const HomeScreen(),
        ScreenKeys.resetPasswordScreen : (context) => const ResetPasswordScreen(),
        ScreenKeys.forgetPasswordScreen : (context) => const ForgetPasswordScreen(),
        ScreenKeys.successfulCheckOutScreen : (context) => const SuccessfulCheckOutScreen(),
        ScreenKeys.mainBnScreen : (context) => const MainBnScreen(),
        ScreenKeys.favoriteBnScreen : (context) => const FavouriteBnScreen(),
        ScreenKeys.searchBnScreen : (context) => const SearchBnScreen(),
        ScreenKeys.cartBnScreen : (context) => const CartBnScreen(),
        ScreenKeys.notificationsScreen : (context) => const NotificationsScreen(),
        ScreenKeys.messagesScreen : (context) => const MessagesScreen(),
        ScreenKeys.productDetailsScreen : (context) => const ProductDetailsScreen(),
        ScreenKeys.faqsScreen : (context) => const FaqsScreen(),
        ScreenKeys.infoScreen : (context) => const InfoScreen (),
        ScreenKeys.settingsBnScreen : (context) => const SettingsBnScreen(),
        ScreenKeys.outBoardringScreen : (context) => const OnBoardringSceren(),
      },
    );
  }

}

