import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui_haritask/todo/task_controller.dart';
import 'package:ui_haritask/todo/viewtask.dart';

List todo = [];

class AddPage extends StatelessWidget {
  TaskController taskController = Get.find();

  AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        taskController.titlecontroller.clear();
        taskController.isvisible.value = false;
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'ADD TASK',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Obx(
              () => Visibility(
                visible: taskController.isvisible.value,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: ElevatedButton(
                    onPressed: () {
                      
                      taskController.createTask(
                          taskController.titlecontroller.text,
                          taskController.descontroller.text);
                      taskController.titlecontroller.clear();
                      taskController.descontroller.clear();
                      taskController.isvisible.value = false;
                      Get.back();
                      Get.snackbar('Sucess', 'Successfully added',
                          snackPosition: SnackPosition.BOTTOM);
                      // Text('text : $taskController');
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => ViewTask()));
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: null,
                //maxLength: 10,
                keyboardType: TextInputType.multiline,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                decoration: InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                controller: taskController.titlecontroller,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    taskController.isvisible.value = true;
                  } else {
                    taskController.isvisible.value = false;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Note",
                  border: InputBorder.none,
                ),
                controller: taskController.descontroller,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    taskController.isvisible.value = true;
                  } else {
                    taskController.isvisible.value = false;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AddPage extends StatefulWidget {
//   const AddPage({super.key});

//   @override
//   State<AddPage> createState() => _AddPageState();
// }

// class _AddPageState extends State<AddPage> {
//   TextEditingController titlecontroller = TextEditingController();
//   TextEditingController descontroller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'TASK APP',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 30),
//             child: ElevatedButton(
//               onPressed: () {
//                 todo.add({
//                   "title": titlecontroller.text,
//                   "desc": descontroller.text,
//                 });
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => ViewTask()));
//               },
//               child: Text(
//                 'Save',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(7))),
//             ),
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(hintText: "type here"),
//             controller: titlecontroller,
//           ),
//           TextField(
//             decoration: InputDecoration(hintText: "type here"),
//             controller: descontroller,
//           ),
//         ],
//       ),
//     );
//   }
// }

//List todo = [];
