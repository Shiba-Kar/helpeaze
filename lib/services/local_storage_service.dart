import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final _themeKey = "key_theme";
  final _jwtKey = 'x-appwrite-jwt';
  LocalStorageService();

  Future<bool> getTheme() async {
    final val = await _storage.read(key: _themeKey);

    if (val == null) return false;

    var decode = jsonDecode(val) as Map<String, dynamic>;
    return decode['state'];
  }

  Future storeTheme(bool state) async {
    final Map<String, dynamic> val = {"state": state};
    final json = jsonEncode(val);
    await _storage.write(key: _themeKey, value: json);
  }
}
