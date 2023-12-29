import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:kidsland/database/functions/db_alphabetfunctions.dart';
import 'package:kidsland/model/alphabets_model.dart';
import 'package:kidsland/screen/admin/adminalphabet/functions/functionsofadmin.dart';
import 'package:kidsland/screen/admin/adminalphabet/pages/adminalphabet_display.dart';
import 'package:kidsland/widget/constants.dart';

class ShowDetailsScreen extends StatefulWidget {
  const ShowDetailsScreen({
    super.key,
    required this.appDetails,
  });
  final WordsForKids appDetails;
  @override
  State<ShowDetailsScreen> createState() => _ShowDetailsScreenState();
}

final formkey = GlobalKey<FormState>();
var wordsController = TextEditingController();
var _listController = TextEditingController();
File? numbersImage;
File? selectedImage;
String? audiofilePath;
File? alphabetImages;

class _ShowDetailsScreenState extends State<ShowDetailsScreen> {
  @override
  void initState() {
    super.initState();

    selectedImage = File(widget.appDetails.imageUrl);
    wordsController = TextEditingController(text: widget.appDetails.words);
    alphabetImages = File(widget.appDetails.alphabets);
    audiofilePath = (widget.appDetails.audioFile);
    _listController = TextEditingController(text: widget.appDetails.list);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 152, 238, 243),
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
                                  File? pickedimage =
                                      await selectImageFromGallery(context);
                                  setState(() {
                                    selectedImage = pickedimage;
                                  });
                                },
                                icon: const Icon(Icons.add_a_photo))
                            : null),
                    const SizedBox(
                      height: 30,
                    ),
                    buildTextFormField(
                        labelText: 'Words',
                        controller: wordsController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red)))),
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
                            )),
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
                        child: const Text('Update Audio')),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: () async {
                        if (selectedImage != null &&
                            alphabetImages != null &&
                            alphabetImages!.path.isNotEmpty &&
                            wordsController.text.isNotEmpty &&
                            _listController.text.isNotEmpty &&
                            audiofilePath != null &&
                            audiofilePath!.isNotEmpty) {
                          final details = WordsForKids(
                            alphabets: alphabetImages!.path,
                            words: wordsController.text,
                            imageUrl: selectedImage!.path,
                            audioFile: audiofilePath!,
                            list: _listController.text,
                          );
                          print(details);

                          await updateAlphabetData();
                          // ignore: use_build_context_synchronously
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const AlphabetDisplay(),
                          ));
                        }
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateAlphabetData() async {
    final updateAlphabetData = WordsForKids(
      alphabets: alphabetImages!.path,
      words: wordsController.text,
      imageUrl: selectedImage!.path,
      audioFile: audiofilePath!,
      list: _listController.text,
    );
    int key = getkeyofupdatealphabet(widget.appDetails);
    await updateAlphabet(updateAlphabetData, key);
  }

  int getkeyofupdatealphabet(WordsForKids details) {
    var box = Hive.box<WordsForKids>('word');
    var key = box.keyAt(box.values.toList().toList().indexOf(details));
    return key;
  }
}
