import 'package:flutter/material.dart';
class AppTextFiled extends StatelessWidget {


  final String label;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController textEditingController;


  const AppTextFiled({super.key, required this.label, required this.hintText,required this.prefixIcon, this.suffixIcon,
  required  this.textEditingController,required this.keyboardType, required this.obscureText} );



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: TextField(
        keyboardType: keyboardType ,
        controller: textEditingController,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2),
          ),
          label:  Text(label),
          hintText: hintText,
          prefixIcon:  Icon(prefixIcon),
          suffixIcon:  Icon(suffixIcon),

        ),
      ),
    );
  }


}