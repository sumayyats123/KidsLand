// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/admincategory_ist.dart';
import 'package:kidsland/services/authentication.dart';
import 'package:kidsland/widget/constants.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({
    Key? key,
  }) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final _formFieldKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;
  File? selectedImage;
  File? audioFilePath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formFieldKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: buildTextFormField(
                    labelText: 'Email',
                    prefixIcon: Icons.email,
                    validator: (value) {
                      return RegExp(r"^[a-z0-9]+@gmail+\.com+").hasMatch(value!)
                          ? null
                          : "Please enter a valid email";
                    },
                    controller: emailController,
                  ),
                ),
                const SizedBox(height: 30),
                buildTextFormField(
                  labelText: 'Password',
                  prefixIcon: Icons.lock,
                  obscureText: passToggle,
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(
                      passToggle ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    } else if (passwordController.text.length < 6) {
                      return "Password Length Should be more than 6 Characters";
                    }
                    return null;
                  },
                  controller: passwordController,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () async {
                      if (_formFieldKey.currentState!.validate()) {
                        if (emailController.text == 'sumayyats429@gmail.com' &&
                            passwordController.text == 'mi@123') {
                          final value =await AuthService()
                              .registerAdminWithEmailandPassword(
                                  emailController.text.trim(),
                                  passwordController.text.trim());
                          if (value == true) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CategoryList(),
                              ),
                              (route) => false,
                            );
                          } else if (value == false) {
                            final value= AuthService().login(emailController.text.trim(),
                                  passwordController.text.trim());
                                  Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CategoryList(),
                              ),
                              (route) => false,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(
                              content: Text(value.toString()),backgroundColor: Colors.red,
                            ),
                          );}
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Enter the Email or Password is incorrect',
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: const Text(
                      "Admin Login",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
