import 'package:flutter/material.dart';
import 'package:kidsland/screen/admin/admin_login.dart';
import 'package:kidsland/database/functions/sharedpreference.dart';
import 'package:kidsland/screen/user/usercategory_list.dart';
import 'package:kidsland/widget/constants.dart';// Import the app_constants.dart file

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

final namecontroller = TextEditingController();

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
              const Text(
                'Welcome',
                style: AppTextStyles.welcomeTitle, // Use the constant for welcome title
              ),
              const Text(
                'Shining Star',
                style: AppTextStyles.subTitle, // Use the constant for subtitle
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter Your  Name ',
                  ),
                  style: AppTextStyles.inputTextStyle, // Use the constant for input text style
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
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              'Adminlogin',
                              style: AppTextStyles.adminLoginTextStyle, // Use the constant for admin login text style
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await shared_preferences.setname(namecontroller.text);
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => DashboardPage(name: namecontroller.text),
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
