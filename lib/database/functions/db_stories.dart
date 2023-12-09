
import 'package:hive/hive.dart';
import 'package:kidsland/model/storie_model.dart';

Future<void> addstory(StoryModel value) async {
  final storyDB = await Hive.openBox<StoryModel>('story');
  await storyDB.add(value);
}

Future<List<StoryModel>> getstory() async {
  final storyDB = await Hive.openBox<StoryModel>('story');
  return storyDB.values.toList();
}

Future<int> getstoryKey(StoryModel storytogetkey) async {
  final storyDB = await Hive.openBox<StoryModel>('story');
  final key =
      storyDB.keyAt(storyDB.values.toList().indexOf(storytogetkey));
  return key;
}

Future<void> updatestory(StoryModel appDetails, int key) async {
  var upadateScreen = await Hive.openBox<StoryModel>('story');
  await upadateScreen.put(key, appDetails);
}

Future<void> deleatestoryItem(int key) async {
  final storyDB = await Hive.openBox<StoryModel>('story');
  await storyDB.delete(key);
}

Future<List<StoryModel>> fetchByStoryCategory({required String category}) async {
  final box = await Hive.openBox<StoryModel>('story');
  return box.values
      .toList()
      .where((story) => story.list.toLowerCase() == category.toLowerCase())
      .toList();
}
