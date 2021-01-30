import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageRepository {
  // Create storage
  final storage = new FlutterSecureStorage();

  Future<String> getStoredValue(String key) async {
    try {
      return await storage.read(key: key);
    } catch (error) {
      return null;
    }
  }

  Future<void> storedValue(String key, String value) async {
    try {
      return await storage.write(key: key, value: value.toString());
    } catch (error) {
      return null;
    }
  }

  //String value = await storage.read(key: key);                //Read value
  //Map<String, String> allValues = await storage.readAll();    //Read all values
  //await storage.delete(key: key);                             //Delete value
  //await storage.deleteAll();                                  //Delete all
  //await storage.write(key: key, value: value);                //Write value
}
