import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:kidsland/model/storie_model.dart';
import 'package:kidsland/screen/user/userstorydetails.dart';

class UserStoryDisplay extends StatefulWidget {
  const UserStoryDisplay({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  State<UserStoryDisplay> createState() => _UserStoryDisplayState();
}

class _UserStoryDisplayState extends State<UserStoryDisplay> {
  late Future<List<StoryModel>> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = fetchDatas();
  }

  Future<List<StoryModel>> fetchDatas() async {
    final box = await Hive.openBox<StoryModel>('story');
    return box.values
        .where((story) => story.list.toLowerCase() == widget.category.toLowerCase())
        .toList();
  }

  Future<void> _refreshData() async {
    setState(() {
      _futureData = fetchDatas();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Let's Entertain"), 
            centerTitle: true,
             backgroundColor: const Color.fromRGBO(221, 7, 175, 1),
          ),
          body: RefreshIndicator(
            onRefresh: _refreshData,
            child: FutureBuilder(
              future: _futureData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else if (snapshot.data!.isEmpty) {
                  return const Center(child: Text("There is no data available"));
                }
      
                List<StoryModel> data = snapshot.data as List<StoryModel>;
      
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1 / 0.90,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => StoryDetails(storyforkids: data[index]),
                          ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.file(
                            File(data[index].storyUrl),
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
          ),
      ),
    );
  }
}