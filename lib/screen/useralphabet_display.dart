import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kidsland/database/functions/db_alphabetfunctions.dart';
import 'package:kidsland/model/alphabets_model.dart';
import 'package:kidsland/screen/useralphabet_details.dart';

class AbcScreen extends StatefulWidget {
  AbcScreen({super.key, required this.category});
  String category;
  
  @override
  State<AbcScreen> createState() => _AbcScreenState();
}

List<WordsForKids> details = [];

class _AbcScreenState extends State<AbcScreen> {
  List<WordsForKids> details = [];

  Future<List<WordsForKids>> fetchData() async {
    return fetchByCategory(category: widget.category);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DETAILS"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.data!.isEmpty) {
            return const Center(child: Text("There is no data available"));
          }

          List<WordsForKids> data = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 0.90,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          Alphabetdetails(wordsforkids: data[index]),
                    ));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.file(
                      File(data[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: data.length,
            ),
          );
        },
      ),
    );
  }
}