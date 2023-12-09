import 'package:shared_preferences/shared_preferences.dart';


class shared_preferences {
  static String nameKey = 'name'; 
static String passwordKey = 'password';

 static Future<bool> setname(String name) async {
    final SharedPreferences sf = await SharedPreferences.getInstance();print('name');
  return await sf.setString(nameKey, name);
  
}
static Future<String?> getName() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return  sf.getString(nameKey);
}
  }



