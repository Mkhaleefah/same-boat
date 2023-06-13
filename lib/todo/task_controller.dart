import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ui_haritask/todo/model.dart';

class TaskController extends GetxController {
  List taskList = [];

  final GetStorage storage = GetStorage();

  RxBool isvisible = false.obs;

  final TextEditingController titlecontroller = TextEditingController();

  final TextEditingController descontroller = TextEditingController();
  RxList<String> items = <String>[].obs;
  // void removeItem(int index) {
  //   items.removeAt(index);
  //   storage.remove('todoList');
  //   storage.write('todoList', items);
  // }
  createTask(String title, String des) {
    taskList.add({'title': title, "des": des});
    storage.write('todoList', taskList);
    update();
  }

  updateTask(String title, String des, int index) {
    // taskList.add({'title': title, "des": des, 'int': id});
    taskList[index] = {"title": title, "des": des};
    storage.write('todoList', taskList);
    update();
    // retrieveData();
    // deleteTask(int index)
  }

  deleteTask(int index) {
    //  taskList.removeAt(index);
    taskList.removeAt(items.length);
    storage.write('todoList', taskList);
    update();
    //  retrieveData();
  }

  @override
  void onInit() {
    super.onInit();
    taskList = storage.read('todoList') ?? [];
    update();
    // retrieveData();
  }
}
