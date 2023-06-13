
import 'package:get_storage/get_storage.dart';

class TodoStorage {
  final _box = GetStorage();

  List<String> getTodos() {
    return _box.read('todos') ?? [];
  }

  void saveTodos(List<String> todos) {
    _box.write('todos', todos);
  }
}