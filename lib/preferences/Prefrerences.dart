import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static late SharedPreferences _prefs;

  static bool _isDarkMode = true;
  static int _gender = 0;
  static String _user = '';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get user {
    return _prefs.getString('user') ?? _user;
  }

  static set user(String value) {
    _user = value;
    _prefs.setString('user', value);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int value) {
    _gender = value;
    _prefs.setInt('gender', value);
  }

  static bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', value);
  }
}