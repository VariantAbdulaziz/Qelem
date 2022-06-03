import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
   void addToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

   Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

   Future<void> removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
  }

  Future<bool>  isFirstRun() async {
    return SharedPreferences.getInstance().then((prefs) {
      return prefs.getBool('firstRun') ?? true;
    });
  }

  Future<void> setFirstRun(bool isFirstRun) async{
    await SharedPreferences.getInstance().then((prefs) {
       prefs.setBool('firstRun', isFirstRun);
    });
  }
}
