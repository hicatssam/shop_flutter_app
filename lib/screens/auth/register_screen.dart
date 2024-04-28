import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/app_textFiled.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('REGISTER'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Join US ...',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                AppTextFiled('Full Name', 'Enter Full name', Icons.person, Icons.clear, _textFullNameEditingController,false),
                const SizedBox(
                  height: 15,
                ),
                AppTextFiled('Birth Day', 'Enter Birth Day', Icons.calendar_month_outlined, Icons.calendar_month, _textBirthDayEditingController,false),
                const SizedBox(
                  height: 15,
                ),
                AppTextFiled('Country', 'Enter country', null,null, _textCountryEditingController,false),
                const SizedBox(
                  height: 15,
                ),
                AppTextFiled('Email', 'Enter Email Address', Icons.email, Icons.clear, _textEmailEditingController,false),
                const SizedBox(
                  height: 15,
                ),
                AppTextFiled('Password', 'Enter Password', Icons.lock, Icons.remove_red_eye, _textPasswordEditingController,true),
                // AppTextFiled('Reset Password', 'Enter Password', Icons.lock, Icons.remove_red_eye, _textPasswordEditingController),

                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                    backgroundColor: Colors.deepOrange,
                    alignment: Alignment.center,
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    preformRegister();
                  },
                  child: const Text('Sign Up',style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do ypu have account?',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ScreenKeys.loginScreen);
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepOrange,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void preformRegister() {
    if (checkData()) {
      register();
    }
  }


  bool checkData() {
    if (_textFullNameEditingController.text.isNotEmpty &
        _textBirthDayEditingController.text.isNotEmpty&
      _textEmailEditingController.text.isNotEmpty&
    _textPasswordEditingController.text.isNotEmpty&
    _textCountryEditingController.text.isNotEmpty) {
      showMessage(message: 'Sign Up Successful...',color: Colors.green);
      return true;
    } else {
      showMessage(message: 'Enter Required Data!',color: Colors.orange);
      return false;
    }
  }

  void register() {
    Navigator.pushReplacementNamed(context, ScreenKeys.loginScreen);
  }

  void showMessage({required String message, required Color color}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:Text(message),
      duration: const Duration(seconds: 2),
      elevation: 10,
      backgroundColor: color,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      behavior: SnackBarBehavior.floating,
    ));
  }


}
