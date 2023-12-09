import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kidsland/database/functions/db_stories.dart';
import 'package:kidsland/model/storie_model.dart';
import 'package:kidsland/screen/logosreen.dart';
import 'package:kidsland/screen/storyscreen/adminstordetails.dart';
import 'package:kidsland/screen/storyscreen/adminstoryscreen.dart';



class StoryDisplay extends StatefulWidget {
const   StoryDisplay ({super.key});

  @override
  State<StoryDisplay > createState() => _StoryDisplayState();
} 
List<StoryModel> details =[];
class _StoryDisplayState extends State<StoryDisplay> {
  Future<void>fetchData()async{
    List<StoryModel> storyDetails = await getstory();
    setState(() {
      details = storyDetails;
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
          title: const Text('Story',style: TextStyle(fontSize: 25),),
          backgroundColor: Colors.red,
          centerTitle: true,
           actions: const [Icon(Icons.text_rotation_none_outlined),SizedBox(width: 20,)],
        leading: InkWell(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogoScreen()));
        },
          child: const Icon(Icons.arrow_back)),
           
        ),
        body:Column(
        children: [
          details.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1 / 1.5,
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10),
                      itemCount: details.length,
                      itemBuilder: (context, index) {
                        return  InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>StoryDetails(
                                    storyDetails: details[index])));
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.file(
                                  File(
                                    (details[index].storyUrl),
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
                                              title: const Text("Delete Image"),
                                              content: const Text(
                                                  "Are you sure you want to delete ?"),
                                              actions: [
                                                ElevatedButton(
                                                    style: const ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.green)),
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
                                                                Colors.green)),
                                                    onPressed: () async{
                                                     int key= await getstoryKey(details[index]);
                                                      deleatestoryItem(
                                                          key);
                                                      setState(() {fetchData();});
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
      floatingActionButton: FloatingActionButton(onPressed: ()async 
      {Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdminStoryScreen(),));
        
      },child: Icon(Icons.add),),
      
      ),
    );
  }@override
  void dispose() {
    details.clear();
    super.dispose();
  }
}