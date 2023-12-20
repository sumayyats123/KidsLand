import 'package:flutter/material.dart';

class AppTextStyles {
  Widget textEdit({
    String? text,
    double? fsize,
    FontWeight? fweight,
    Color? tcolor,
    String? tfamily,
  }) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fsize,
        fontWeight: fweight,
        color: tcolor,
        fontFamily: tfamily,
      ),
    );
  }

  Widget buildCircleAvatar({
    required double caradius,
    required Color cacolor,
    required double casize,
    required Color caiconcolor,
  }) {
    return CircleAvatar(
      radius: caradius,
      backgroundColor: cacolor,
      child: Icon(
        Icons.add,
        size: casize,
        color: caiconcolor,
      ),
    );
  }
}

class AppFormFieldDecorations {
  static InputDecoration textFieldDecoration = InputDecoration(
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

Widget buildTextFormField(
    {required String labelText,
    IconData? prefixIcon,
    bool obscureText = false,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    required TextEditingController controller,
    dynamic decoration}) {
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
