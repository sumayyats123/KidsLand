import 'package:hive_flutter/hive_flutter.dart';
import 'package:kidsland/model/alphabets_model.dart';

Future<void> addAlphabet(WordsForKids value) async {
  final alphabetDB = await Hive.openBox<WordsForKids>('word');
  await alphabetDB.add(value);
}

Future<List<WordsForKids>> getWords() async {
  final alphabetDB = await Hive.openBox<WordsForKids>('word');
  return alphabetDB.values.toList();
}

Future<int> getKey(WordsForKids wordstogetkey) async {
  final alphabetDB = await Hive.openBox<WordsForKids>('word');
  final key =
      alphabetDB.keyAt(alphabetDB.values.toList().indexOf(wordstogetkey));
  return key;
}

Future<void> updateAlphabet(WordsForKids appDetails, int key) async {
  var upadateScreen = await Hive.openBox<WordsForKids>('word');
  await upadateScreen.put(key, appDetails);
}

Future<void> deleateItem(int key) async {
  final alphabetDB = await Hive.openBox<WordsForKids>('word');
  await alphabetDB.delete(key);
}

Future<List<WordsForKids>> fetchByCategory({required String category}) async {
  final box = await Hive.openBox<WordsForKids>('word');
  return box.values
      .toList()
      .where((words) => words.list.toLowerCase() == category.toLowerCase())
      .toList();
}
