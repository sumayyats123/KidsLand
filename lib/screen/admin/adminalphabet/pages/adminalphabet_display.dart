import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kidsland/database/functions/db_alphabetfunctions.dart';
import 'package:kidsland/model/alphabets_model.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/adminscreen.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/adminalphabet_details.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/admincategory_ist.dart';
import 'package:kidsland/screen/introscreens/welocmescreen.dart';

class AlphabetDisplay extends StatefulWidget {
  const AlphabetDisplay({super.key});

  @override
  State<AlphabetDisplay> createState() => _AlphabetDisplayState();
}

List<WordsForKids> details = [];

class _AlphabetDisplayState extends State<AlphabetDisplay> {
  Future<void> fetchData() async {
    List<WordsForKids> kidsDetails = await getWords();
    setState(() {
      details = kidsDetails;
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              texteditingcontroller.textEdit(text: 'Alphabet Model', fsize: 30),
          backgroundColor: const Color.fromRGBO(221, 7, 175, 1),
          centerTitle: true,
          actions: const [
            Icon(Icons.text_rotation_none_outlined),
            SizedBox(
              width: 20,
            )
          ],
          leading: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CategoryList()));
              },
              child: const Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            details.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 13),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1 / 1.5,
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10),
                        itemCount: details.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ShowDetailsScreen(
                                          appDetails: details[index])));
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.file(
                                    File(
                                      (details[index].imageUrl),
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 5,
                                  right: 0,
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.green,
                                      child: IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.white,
                                                title:
                                                    const Text("Delete Image"),
                                                content: const Text(
                                                    "Are you sure you want to delete ?"),
                                                actions: [
                                                  ElevatedButton(
                                                      style: const ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStatePropertyAll(
                                                                  Colors
                                                                      .green)),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child:
                                                          const Text("Cancel")),
                                                  ElevatedButton(
                                                      style: const ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStatePropertyAll(
                                                                  Colors
                                                                      .green)),
                                                      onPressed: () async {
                                                        int key = await getKey(
                                                            details[index]);
                                                        deleateItem(key);
                                                        setState(() {
                                                          fetchData();
                                                        });
                                                        // ignore: use_build_context_synchronously
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: const Text("Ok"))
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.delete,
                                          size: 20,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          );
                        }),
                  )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AdminScreen(),
            ));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  @override
  void dispose() {
    details.clear();
    super.dispose();
  }
}
