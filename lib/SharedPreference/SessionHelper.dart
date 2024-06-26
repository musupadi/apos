import 'package:shared_preferences/shared_preferences.dart';

Future<String> SessionIDUser() async {
  final prefs = await SharedPreferences.getInstance();
  final String? id = await prefs.getString('id');
  String Name = id.toString();
  return Name;
}