import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kidsland/database/functions/db_alphabetfunctions.dart';
import 'package:kidsland/model/alphabets_model.dart';
import 'package:kidsland/screen/adminalphabet_display.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  final formkey = GlobalKey<FormState>();
  TextEditingController wordsController = TextEditingController();
  File? selectImage;
  String? audiofilePath;
  File? alphabetImages;

  String dropdown = "Alphabets";
  List<List<String>> categories = [
    ['Alphabets'],
    ['Numbers'],
    ['Shapes'],
    ['Colours'],
    ['Animals'],
    ['Bodyparts'],
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
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: selectImage != null
                          ? DecorationImage(
                              image: FileImage(selectImage!), fit: BoxFit.cover)
                          : null,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: selectImage == null
                        ? IconButton(
                            onPressed: () async {
                              File? pickedImage =
                                  await selectImageFromGallery(context);
                              setState(() {
                                selectImage = pickedImage;
                              });
                            },
                            icon: const Icon(Icons.add_a_photo),
                          )
                        : null,
                  ),
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
                      labelText: 'Word',
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
                        items: categories.map<DropdownMenuItem<String>>(
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
                          _addNewCategory();
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
                            alphabetImages = pickedImage;
                          });
                        },
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: alphabetImages != null
                              ? FileImage(alphabetImages!)
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
                      if (selectImage != null &&
                          alphabetImages != null &&
                          audiofilePath != null) {
                        final details = WordsForKids(
                          alphabets: alphabetImages!.path.toString(),
                          words: wordsController.text,
                          imageUrl: selectImage!.path.toString(),
                          audioFile: audiofilePath!,
                          list: dropdown,
                        );
                        await addAlphabet(details);
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const AlphabetDisplay(),
                          ),
                          (route) => false,
                        );
                      } else {
                        print('error ');
                        print(selectImage!.path);
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

  void _addNewCategory() {
    String newCategory = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add New Category'),
          content: TextField(
            onChanged: (value) {
              newCategory = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (newCategory.isNotEmpty) {
                  setState(() {
                    categories.add([newCategory]);
                  });
                  Navigator.of(context).pop();
                } else {
                  // Handle case where the entered category is empty
                  // You may want to show an error message or handle it appropriately
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
