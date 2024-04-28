import 'package:flutter/material.dart';
class AppTextFiled extends StatelessWidget {


  final String label;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextEditingController textEditingController;


  const AppTextFiled(this.label, this.hintText, this.prefixIcon, this.suffixIcon,
      this.textEditingController, this.obscureText, {super.key});



  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }


}