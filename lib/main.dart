
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prefs/SharedPrefsContoller.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/screens/address/add_address_screen.dart';
import 'package:shop_app/screens/address/address_screen.dart';
import 'package:shop_app/screens/appBarActions/cart_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/favoruite_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/main_bn_screen.dart';
import 'package:shop_app/screens/bn_screens/serach_bn_screen.dart';
import 'package:shop_app/screens/faqs_screens/faqs_screen.dart';
import 'package:shop_app/screens/info_screens/InfoScreen.dart';
import 'package:shop_app/screens/mainScreens/launch-screen.dart';
import 'package:shop_app/screens/mainScreens/home_screen.dart';
import 'package:shop_app/screens/auth/login_screen.dart';
import 'package:shop_app/screens/appBarActions/messages_screen.dart';
import 'package:shop_app/screens/appBarActions/notifications_screen.dart';
import 'package:shop_app/screens/mainScreens/product_details_screen.dart';
import 'package:shop_app/screens/auth/register_screen.dart';
import 'package:shop_app/screens/auth/forgetPassword_screen.dart';
import 'package:shop_app/screens/mainScreens/settings_bn_screen.dart';
import 'package:shop_app/screens/scanderyScreens/notifications_settings_screen.dart';
import 'package:shop_app/screens/onBoardringScreens/onBoardringScreen.dart';
import 'package:shop_app/screens/auth/resetPassword_screen.dart';
import 'package:shop_app/screens/scanderyScreens/successful_check_out_screen.dart';


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsController().initShardPrefs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String tilte= '';

    return  MaterialApp(
      initialRoute: ScreenKeys.homeScreen,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Bevan',
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.deepOrange
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.deepOrange
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange
          ),
        )
      ),

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
        ScreenKeys.notificationsSettingsScreen : (context) => const NotificationsSettingsScreen(),
        ScreenKeys.messagesScreen : (context) => const MessagesScreen(),
        ScreenKeys.productDetailsScreen : (context) => const ProductDetailsScreen(),
        ScreenKeys.faqsScreen : (context) => const FaqsScreen(),
        ScreenKeys.infoScreen : (context) => const InfoScreen (),
        ScreenKeys.settingsBnScreen : (context) => const SettingsBnScreen(),
        ScreenKeys.addressScreen : (context) => const AddressScreen(),
        ScreenKeys.addAddressScreen : (context) => const AddAddressScreen(),
        ScreenKeys.onBoardringScreen : (context) => const OnBoardringSceren(),

      },
    );
  }

}

