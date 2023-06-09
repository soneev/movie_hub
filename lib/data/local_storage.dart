import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TRSecureStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  writeData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  readData(String key) async {
    String value = await storage.read(key: key) ?? 'No Data Found';

    debugPrint('Data Read From Secure Storage : $value');
    return value;
  }

  // deleteData(String key) async {
  //   await storage.delete(key: key);
  // }


}