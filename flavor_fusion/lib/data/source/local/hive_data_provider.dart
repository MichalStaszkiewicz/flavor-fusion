import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDataProvider<T> {
  Box<T>? _box;
  String _boxName = '';

  Future<void> initHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }

  Future<void> openBox(String boxName) async {
    _boxName = boxName;
    _box = await Hive.openBox<T>(_boxName);
  }

/*
  Future<void> addData(T data) async {
    await _box?.add(data);
  }
*/
  bool objectExist(String id) {
    bool? exist = _box?.containsKey(id.toString());

    if (exist != null && exist != false) {
      return true;
    }
    return false;
  }

  List<T> getData() {
    return _box?.values.toList() ?? [];
  }

  Future<void> put(T data, String key) async {
    await _box
        ?.put(key, data)
        .then((value) => print("added new value: " + _box!.keys.toString()));
  }

  Future<void> deleteData(String key) async {
    await _box?.delete(key);
  }

  Future<void> closeBox() async {
    await _box?.close();
  }
}
