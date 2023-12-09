import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kidsland/screen/admincategory_ist.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({
    Key? key,
  }) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();

  AdminLoginState() {}
}

class _AdminLoginState extends State<AdminLogin> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;
  File? selectedImage;
  File? audiofilePath;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Form(
                key: _formfield,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email),
                      ),
                      validator: (value) {
                        return RegExp(r"^[a-z0-9]+@gmail+\.com+")
                                .hasMatch(value!)
                            ? null
                            : "Please enter a valid email";
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
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
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () async {
                  if (_formfield.currentState!.validate()) {
                    if (emailController.text == 'sumayyats429@gmail.com' &&
                        passwordController.text == 'mi@123') {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Successful'),
                      ));
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryList()),
                        (route) => false,
                      );
                      emailController.clear();
                      passwordController.clear();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:
                            Text('Enter the Email or Password is incorrect'),
                      ));
                    }
                  }
                },
                child: const Text(
                  "Admin Login",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
