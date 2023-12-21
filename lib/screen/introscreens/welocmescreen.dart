import 'package:flutter/material.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/admin_login.dart';
import 'package:kidsland/database/functions/sharedpreference.dart';
import 'package:kidsland/screen/user/pages/usercategory_list.dart';
import 'package:kidsland/widget/constants.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

final namecontroller = TextEditingController();
final texteditingcontroller = AppTextStyles();

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/rainbow__1_-removebg-preview.png",
                width: size.width,
              ),
              texteditingcontroller.textEdit(
                  text: 'WELCOME',
                  tcolor: Colors.red,
                  tfamily: 'Poppins',
                  fsize: 25,
                  fweight: FontWeight.bold),
              texteditingcontroller.textEdit(
                  text: 'Shining Stars',
                  tcolor: Colors.red,
                  tfamily: 'Poppins',
                  fsize: 30,
                  fweight: FontWeight.bold),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter Your  Name ',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () async {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const AdminLogin(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: texteditingcontroller.textEdit(
                                text: 'AdminLogin',
                                tcolor: Colors.red,
                                fsize: 15,
                              )),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await shared_preferences.setname(namecontroller.text);
                        // ignore: use_build_context_synchronously
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) =>
                                DashboardPage(name: namecontroller.text),
                          ),
                          (route) => false,
                        );
                      },
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.home,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    namecontroller.clear();
    super.dispose();
  }
}
