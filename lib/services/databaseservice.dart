
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kidsland/model/alphabets_model.dart';




class DatabaseServices {
  final String? adminid;
  DatabaseServices({this.adminid});
final CollectionReference alphabetCollection =
  FirebaseFirestore.instance.collection('AlphabetModel');

final CollectionReference storyCollection =  
 FirebaseFirestore.instance.collection('StoryModel');
Future updateAdminData(WordsForKids alphabetsmodel) async {
  return await alphabetCollection.doc(adminid).set({
    "alaphabetimageurl": alphabetsmodel.alphabets,
    "word":alphabetsmodel.words,
    "category":alphabetsmodel.list,
     "imageurl":alphabetsmodel.imageUrl,
     "audiofile":alphabetsmodel.audioFile,
  });
}
 
}
