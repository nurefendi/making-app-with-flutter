
import 'package:get_storage/get_storage.dart';

class LocalStorage {
  LocalStorage._();
  static final LocalStorage _instance = LocalStorage._();
  final _storage = GetStorage();
  factory LocalStorage() {
    return _instance;
  }
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }
  T? readData<T>(String key) {
    return _storage.read(key);
  }
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }
}