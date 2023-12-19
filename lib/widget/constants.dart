

import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle welcomeTitle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color:    Colors.red,
    fontFamily: 'Poppins',
  );

  static const TextStyle subTitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.red,
    fontFamily: 'Poppins',
  );

  static const TextStyle inputTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );

  static const TextStyle adminLoginTextStyle = TextStyle(
    fontSize: 10,
    color: Colors.black45,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle appBarTitle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle categoryTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 182, 16, 4),
  );

}

class AppFormFieldDecorations {
  static  InputDecoration textFieldDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.red),
    ),
    labelStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.red,
    ),
  );
}



  Widget buildTextFormField({
    required String labelText,
    required IconData prefixIcon,
    bool obscureText = false,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,
      decoration: AppFormFieldDecorations.textFieldDecoration.copyWith(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
      validator: validator,
    );
  }