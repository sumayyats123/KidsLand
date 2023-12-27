import 'package:hive_flutter/hive_flutter.dart';
import 'package:kidsland/model/alphabets_model.dart';
import 'package:kidsland/model/storie_model.dart';

final List<Map<String, dynamic>> Data = [
  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FA.png?alt=media&token=adc6acd8-4532-465d-8b7d-a01bb028977d",
    "words": "Apple",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FA.png?alt=media&token=adc6acd8-4532-465d-8b7d-a01bb028977d",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FA%20FOR%20APPLE.mp3?alt=media&token=83393c9d-7743-45a4-b79b-89e1057ead75",
    "list": "Alphabets",
  },

  {
    "alphabets":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FB.png?alt=media&token=3c71f891-e6e6-4f39-aeda-2ef0faebf88d",
    "words": "Ball",
    "imageUrl":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FBALL.png?alt=media&token=ce61d620-57ed-4dc6-8466-43c7c8fba7b5",
    "audioFile":
        "https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FB%20FOR%20BALL%20(1).mp3?alt=media&token=c7d08715-6708-4d6e-9aa1-ccff1b19b482",
    "list": "Alphabets",
  }
];

Future<void> addDataInitially() async {
  final db1 = await Hive.openBox<WordsForKids>('word');

  if (db1.isEmpty) {
    // ignore: non_constant_identifier_names
    for (var Map in Data) {
      final model = WordsForKids(
          alphabets: Map['alphabets'],
          words: Map['words'],
          imageUrl: Map['imageUrl'],
          audioFile: Map['audioFile'],
          list: Map['list']);
          await db1.add(model);
    }
  }
}


final List<Map<String, dynamic>> Datas = [
  {
    "storyUrl":'https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FGOAT.png?alt=media&token=7043cfa8-0350-42f3-aa5a-440f5269b338',
     "words"   :'Goat',
     "audioFile":"https://firebasestorage.googleapis.com/v0/b/kids-land-51e98.appspot.com/o/Alphabet%20image%2FG%20FOR%20GOAT.mp3?alt=media&token=125ba889-7025-4de4-9b6b-8502bc8b681c",
     "list":'Story',
       },
];

Future<void>addDataInitially2()async{
  final db2 =await Hive.openBox<StoryModel>('story'); 
  if(db2.isEmpty){
    // ignore: non_constant_identifier_names
    for(var Map in Datas){
      final model = StoryModel(
      storyUrl: Map['storyUrl'],
      words: Map['words'],
      audioFile: Map['audioFile'],
      list: Map['list']);
      await db2.add(model);
    }
  }
}