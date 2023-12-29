import 'package:flutter/material.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/adminalphabet_display.dart';
import 'package:kidsland/screen/introscreens/logosreen.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/adminstordisplay.dart';
import 'package:kidsland/screen/introscreens/welocmescreen.dart';
import 'package:kidsland/widget/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    super.key,
  });

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final adminca = AppTextStyles();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: const Color.fromARGB(255, 152, 238, 243),
        appBar: AppBar(
          title: texteditingcontroller.textEdit(text: 'Add Datas', fsize: 30),
          centerTitle: true,
           backgroundColor: const Color.fromARGB(255, 26, 110, 93),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Alphabet Category'),
            SizedBox(
              height: 100,
              width: 100,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AlphabetDisplay(),
                  ));
                },
                child: adminca.buildCircleAvatar(
                    caradius: 10,
                    cacolor: Colors.red,
                    casize: 50,
                    caiconcolor: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text('Story Category'),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StoryDisplay(),
                  ));
                },
                child: adminca.buildCircleAvatar(
                    caradius: 10,
                    cacolor: Colors.red,
                    casize: 50,
                    caiconcolor: Colors.white),
              ),
            ),
            const Center(
              child: SizedBox(
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const LogoScreen()),
                    (route) => false);
              },
              child: const Icon(
                Icons.power_settings_new,
                size: 50,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
