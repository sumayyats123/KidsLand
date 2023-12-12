import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kidsland/database/functions/db_stories.dart';
import 'package:kidsland/model/storie_model.dart';
import 'package:kidsland/screen/storyscreen/adminstordisplay.dart';


class StoryDetails extends StatefulWidget {
  const StoryDetails({Key? key, required this.storyDetails}) : super(key: key);
  final StoryModel storyDetails;

  @override
  State<StoryDetails> createState() => _StoryDetailsState();
}

final formkey = GlobalKey<FormState>();
var wordsController = TextEditingController();
var _listController = TextEditingController();
File? selectedImage;
String? audioFilePath;


class _StoryDetailsState extends State<StoryDetails> {
  @override
  void initState() {
    super.initState();

    selectedImage = File(widget.storyDetails.storyUrl);
    wordsController = TextEditingController(text: widget.storyDetails.words);
    audioFilePath = widget.storyDetails.audioFile;
    _listController = TextEditingController(text: widget.storyDetails.list);
  }

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
                      image: selectedImage != null
                          ? DecorationImage(
                              image: FileImage(selectedImage!),
                              fit: BoxFit.cover)
                          : null,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: selectedImage == null
                        ? IconButton(
                            onPressed: () async {
                              File? pickedImage =
                                  await selectImageFromGallery(context);
                              setState(() {
                                selectedImage = pickedImage;
                              });
                            },
                            icon: Icon(Icons.add_a_photo),
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
                  
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final audio = await pickAndPlayAudio(context);
                      audioFilePath = audio;
                    },
                    child: Text('Update Audio'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () async {
                      if (selectedImage != null &&
                          wordsController.text.isNotEmpty &&
                          _listController.text.isNotEmpty &&
                          audioFilePath != null &&
                          audioFilePath!.isNotEmpty) {
                        final details = StoryModel(
                          words: wordsController.text,
                          storyUrl: selectedImage!.path,
                          audioFile: audioFilePath!,
                          list: _listController.text,
                          videoplayer: '',
                        );

                        int key = getkeyofupdatestory(widget.storyDetails);
                        await updatestory(details, key);

                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => StoryDisplay(),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Update",
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

  Future<File> selectImageFromGallery(BuildContext context) async {
    File? image;
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        image = File(pickedImage.path);
      }
    } catch (e) {
      return image!;
    }
    return image!;
  }

  Future<void> updatestoryData() async {
    final updatestoryData = StoryModel(
      words: wordsController.text,
      storyUrl: selectedImage!.path,
      audioFile: audioFilePath!,
      list: _listController.text,
      videoplayer: '',
    );
    int key = getkeyofupdatestory(widget.storyDetails);
    await updatestory(updatestoryData, key);
  }

  int getkeyofupdatestory(StoryModel details) {
    var box = Hive.box<StoryModel>('story');
    var key = box.keyAt(box.values.toList().indexOf(details));
    return key;
  }
}
