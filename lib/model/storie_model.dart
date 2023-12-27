import 'package:hive/hive.dart';
part 'storie_model.g.dart';


@HiveType(typeId: 2)
class StoryModel{

   @HiveField(0)
 final  String storyUrl;

  @HiveField(1)
 final String words;

 @HiveField(2)
 final String audioFile;
 
 @HiveField(4)
 final String list;





StoryModel({
  required this.storyUrl,
required this.words,

required this.audioFile,
required this.list
});
}





 
