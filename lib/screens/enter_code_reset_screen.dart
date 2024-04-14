import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';
import 'package:shop_app/widget/app_textFiled.dart';

class EnterCodeResetScreen extends StatefulWidget {
  const EnterCodeResetScreen({super.key});

  @override
  State<EnterCodeResetScreen> createState() => _EnterCodeResetScreenState();
}

class _EnterCodeResetScreenState extends State<EnterCodeResetScreen> {

  late TextEditingController _textCodeEditingController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textCodeEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textCodeEditingController.dispose();

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
                'Reset Password',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Enter Code..',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextFiled('Code ', 'Enter Code', Icons.code, Icons.clear, _textCodeEditingController),
              const SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     TextButton(
              //         onPressed: () {},
              //         child: const Text(
              //           'Reset Password?',
              //           style: TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.w700,
              //             color: Colors.orangeAccent,
              //           ),
              //           textAlign: TextAlign.start,
              //         )),
              //   ],
              // ),
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
                child: const Text('Confirm'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Did not receive code ??',
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
                        'Check Out',
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
      showMessage(message: 'Check Out Successful...',color: Colors.green);
    }else{
      showMessage(message: 'Enter Required Data!',color: Colors.orange);
    }
  }

  bool checkError() {
    if (_textCodeEditingController.text.isNotEmpty) {
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


