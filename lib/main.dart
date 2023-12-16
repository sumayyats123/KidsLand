import 'package:flutter/material.dart';
import 'package:kidsland/model/alphabets_model.dart';
import 'package:kidsland/model/storie_model.dart';
import 'package:kidsland/screen/user/usercategory_list.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kidsland/screen/introscreens/logosreen.dart';
import 'package:kidsland/database/functions/sharedpreference.dart';



void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(WordsForKidsAdapter());
  Hive.registerAdapter(StoryModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

String name = '';

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    getname();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: name.isEmpty ? LogoScreen() : DashboardPage(name: name),
      debugShowCheckedModeBanner: false,
    );
  }

  void getname() async {
   await shared_preferences.getName().then((value) {
      setState(() {
        name = value??'';
      });print(value);
    });
  }
}
