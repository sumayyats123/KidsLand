import 'dart:io';
import 'package:flutter/material.dart';

import 'package:kidsland/database/functions/db_stories.dart';

import 'package:kidsland/model/storie_model.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kidsland/screen/storyscreen/adminstordisplay.dart';

class AdminStoryScreen extends StatefulWidget {
  const AdminStoryScreen({Key? key});

  @override
  State<AdminStoryScreen> createState() => _AdminStoryScreenState();
}

class _AdminStoryScreenState extends State<AdminStoryScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  final formkey = GlobalKey<FormState>();
  TextEditingController wordsController = TextEditingController();
 
  String? audiofilePath;
  File? storyImages;

  String dropdown = "Story";
  List<List<String>> storyndcartoon = [
    ['Story'],
    ['Rhymes'],
    
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: wordsController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      labelText: 'Titile of the Story',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      DropdownButton<String>(
                        value: dropdown,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdown = newValue!;
                          });
                        },
                        items: storyndcartoon.map<DropdownMenuItem<String>>(
                          (List<String> value) {
                            return DropdownMenuItem<String>(
                              value: value[0],
                              child: Text(value[0]),
                            );
                          },
                        ).toList(),
                      ),

                      // Add icon button
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          // Call a function to add a new category
                         
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          final pickedImage =
                              await selectImageFromGallery(context);
                          setState(() {
                            storyImages = pickedImage;
                          });
                        },
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: storyImages != null
                              ? FileImage(storyImages!)
                              : null,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final audio = await pickAndPlayAudio(context);
                      audiofilePath = audio;
                    },
                    child: const Text("Upload Audio"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () async {
                      if (
                          storyImages != null &&
                          audiofilePath != null) {
                        final details = StoryModel(
                          storyUrl: storyImages!.path.toString(),
                          words: wordsController.text,
                          audioFile: audiofilePath!,
                          list: dropdown,
                           videoplayer: '',
                        );
                        await addstory(details);
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const StoryDisplay(),
                          ),
                          (route) => false,
                        );
                      } else {
                        print('error ');
                        print(storyImages!.path);
                        // print(audiofilePath!);
                        print(wordsController.text);
                      }
                    },
                    child: const Text(
                      "Upload Details",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<String> pickAndPlayAudio(BuildContext context) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.audio);

    if (result != null && result.files.isNotEmpty) {
      String? filePath = result.files.single.path;
      if (filePath != null) {
        return filePath;
      }
    }

    return '';
  }

  Future<File?> selectImageFromGallery(BuildContext context) async {
    File? image;
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        image = File(pickedImage.path);
      }
    } catch (e) {}
    return image;
  }

}
