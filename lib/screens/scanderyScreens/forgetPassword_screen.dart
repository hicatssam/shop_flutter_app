import 'package:flutter/material.dart';
import 'package:shop_app/screen-keys.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {

  late TextEditingController _textEmailEditingController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEmailEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEmailEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,)),
        backgroundColor: Colors.orangeAccent,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Select verification method and we will send verification code..',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              ListTile(
                leading: Icon(Icons.email,size: 30,),
                title: Text('Email',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                subtitle: Text('*********@mail.com',style: TextStyle(fontSize: 17),),
              ),
              ListTile(
                leading: Icon(Icons.phone,size: 30,),
                title: Text('Phone',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                subtitle: Text('**** **** **** 2345',style: TextStyle(fontSize: 17),),
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
      showMessage(message: 'Logged Successful...',color: Colors.green);
    }else{
      showMessage(message: 'Enter Required Data!',color: Colors.orange);
    }
  }

  bool checkError() {
    if (_textEmailEditingController.text.isNotEmpty) {
      return true;
    } else {

      return false;
    }
  }

  void login() {
    Navigator.pushReplacementNamed(context, ScreenKeys.successfulCheckOutScreen);
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


