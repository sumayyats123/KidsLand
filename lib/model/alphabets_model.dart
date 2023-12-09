
import 'package:hive/hive.dart';
part 'alphabets_model.g.dart';
@HiveType(typeId: 1)
class WordsForKids {
  @HiveField(0)
 final String alphabets;

  @HiveField(1)
 final String words;

 @HiveField(2)
 final  String imageUrl;

 @HiveField(3)
 final String audioFile;

 @HiveField(4)
 final String list;


WordsForKids({
  required this.alphabets,
required this.words,
required this.imageUrl,
required this.audioFile,
required this.list,


});

}