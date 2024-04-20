import 'package:get_storage/get_storage.dart';

class AppGetLocalStorage {
  static final AppGetLocalStorage _instance =  AppGetLocalStorage._internal();

  factory AppGetLocalStorage(){
    return _instance;
  }

  AppGetLocalStorage._internal();

  final _storage = GetStorage();

  // SAVE DATA
  Future<void> saveData<T>({required String key, required T value}) async {
    await _storage.write(key, value);
  }

  // READ DATA
  T? readData<T>({required String key})  {
    return _storage.read<T>(key);
  }

  // REMOVE DATA
    Future<void> removeData<T>({required String key}) async {
    await _storage.remove(key);
  }

  // CLEAR ALL DATA
  Future<void> clearAll() async{
    await _storage.erase();
  }
}