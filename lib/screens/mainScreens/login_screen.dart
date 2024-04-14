import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/app_textFiled.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  late TextEditingController _textEmailEditingController;
  late TextEditingController _textPasswordEditingController;
  late TextEditingController _textFullNameEditingController;
  late TextEditingController _textBirthDayEditingController;
  late TextEditingController _textCountryEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEmailEditingController = TextEditingController();
    _textPasswordEditingController = TextEditingController();
    _textFullNameEditingController = TextEditingController();
    _textBirthDayEditingController = TextEditingController();
    _textCountryEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEmailEditingController.dispose();
    _textPasswordEditingController.dispose();
    _textFullNameEditingController.dispose();
    _textBirthDayEditingController.dispose();
    _textCountryEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Enter Email & Password...',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextFiled('Email ', 'Enter Email', Icons.email, Icons.clear,
                  _textEmailEditingController),
              const SizedBox(
                height: 20,
              ),
              AppTextFiled('Password', 'Enter Password', Icons.lock,
                  Icons.remove_red_eye, _textPasswordEditingController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckboxMenuButton(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                      child: const Text(
                        'Remember me',
                        style: TextStyle(color: Colors.grey),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, ScreenKeys.resetPasswordScreen);
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.orangeAccent,
                        ),
                        textAlign: TextAlign.start,
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.orange,
                  alignment: Alignment.center,
                  minimumSize: const Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  preformLogin();
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do not have account?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenKeys.registerScreen);
                      },
                      child: const Text(
                        'Create one',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.orange,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void preformLogin() {
    if (checkError()) {
      login();
      showMessage(message: 'Logged Successful...', color: Colors.green);
    } else {
      showMessage(message: 'Enter Required Data!', color: Colors.orange);
    }
  }

  bool checkError() {
    if (_textEmailEditingController.text.isNotEmpty &
        _textPasswordEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  void login() {
    Navigator.pushReplacementNamed(context, ScreenKeys.homeScreen);
  }

  void showMessage({required String message, required Color color}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      elevation: 10,
      backgroundColor: color,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      behavior: SnackBarBehavior.floating,
    ));
  }
}
