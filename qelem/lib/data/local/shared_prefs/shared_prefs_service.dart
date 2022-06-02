import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static void addToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static isFirstRun() {
    return SharedPreferences.getInstance().then((prefs) {
      return prefs.getBool('firstRun') ?? true;
    });
  }

  static setFirstRun(bool isFirstRun) {
    return SharedPreferences.getInstance().then((prefs) {
      return prefs.setBool('firstRun', isFirstRun);
    });
  }
}
