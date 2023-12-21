  import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kidsland/model/storie_model.dart';

// to pick the image from gallery
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

// to pick and play audio
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

// to get the key to update the story
    int getkeyofupdatestory(StoryModel details) {
    var box = Hive.box<StoryModel>('story');
    var key = box.keyAt(box.values.toList().indexOf(details));
    return key;
  }