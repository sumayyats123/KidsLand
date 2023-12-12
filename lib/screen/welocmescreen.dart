import 'package:flutter/material.dart';
import 'package:kidsland/screen/usercategory_list.dart';
import 'package:kidsland/screen/admin_login.dart';
import 'package:kidsland/database/functions/sharedpreference.dart';

class Welcome_screen extends StatefulWidget {
  const Welcome_screen({super.key});

  @override
  State<Welcome_screen> createState() => _Welcome_screenState();
}

final namecontroller = TextEditingController();

class _Welcome_screenState extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/rainbow__1_-removebg-preview.png",
            width: size.width,
          ),
          const Text(
            'Welcome',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w700, color: Colors.red),
          ),
          const Text(
            'Shining Star',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: namecontroller,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Enter Your  Name ',
              ),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
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
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AdminLogin(),
                    ));
                  },
                  child: const Row(
                    children: [
                      Text(
                        'adminlogin',
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () async {
                      await shared_preferences.setname(namecontroller.text);
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                DashboardPage(name: namecontroller.text),
                          ));  namecontroller.clear();
                    },
                    child: const CircleAvatar(
                      child: Icon(Icons.turn_right,),backgroundColor: Colors.red,
                    ))
              ],
            ),
          ),
        ]),
      )),
    );
  }
}