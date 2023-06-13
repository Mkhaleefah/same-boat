import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_haritask/todo/add.dart';
import 'package:ui_haritask/todo/task_controller.dart';

class ViewTask extends StatelessWidget {
  ViewTask({super.key});
  TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TASK APP',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => AddPage());
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => AddPage()));
              },
              child: Text(
                '  Add Task',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
            ),
          )
        ],
      ),
      body: addTask(),
    );
  }

  Widget addTask() {
    return GetBuilder<TaskController>(builder: (ctr) {
      return ListView.builder(
        itemCount: taskController.taskList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                tileColor: Colors.white,
                //  title: Text("Task${index + 1}"),
                title: Text(taskController.taskList[index]['title']),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(taskController.taskList[index]['des'])),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        TextEditingController tit = TextEditingController();
                        TextEditingController de = TextEditingController();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: TextField(
                                controller: tit,
                              ),
                              content: TextField(
                                controller: de,
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      taskController.updateTask(
                                          tit.text, de.text, index);
                                      Navigator.pop(context);
                                    },
                                    child: Text('Update'))
                              ],
                            );
                          },
                        );
                      },
                    ),
                    IconButton(
                        onPressed: () {
                          taskController.deleteTask(index);
                          // taskController.removeItem(index);
                          // setState(() {
                          //   todo.removeAt(index);
                          // });
                        },
                        icon: Icon(Icons.delete))
                    //  Icon(Icons.delete),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
    // return Column(
    //   children: [
    //     task(
    //       "Task:1",
    //       "Buy milk after work",
    //     ),
    //     task("Task:1", "Get tasks Completed")
    //   ],
    // );
  }

//   Widget task(String title, int index) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         elevation: 5,
//         child: ListTile(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           tileColor: Colors.white,
//           title: Text("Task${index + 1}"),
//           subtitle: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Flexible(child: Text(title)),
//               IconButton(
//                   onPressed: () {
//                     taskController.deleteTask(index);
//                     // setState(() {
//                     //   todo.removeAt(index);
//                     // });
//                   },
//                   icon: Icon(Icons.delete))
//               //  Icon(Icons.delete),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
}


















































// class ViewTask extends StatefulWidget {
//   const ViewTask({super.key});

//   @override
//   State<ViewTask> createState() => _ViewTaskState();
// }

// class _ViewTaskState extends State<ViewTask> {
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
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => AddPage()));
//               },
//               child: Text(
//                 'Add Task',
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
//       body: addTask(),
//     );
//   }

//   Widget addTask() {
//     return ListView.builder(
//       itemCount: todo.length,
//       itemBuilder: (context, index) {
//         return task(todo[index]["title"], todo[index]["desc"], index);
//       },
//     );
//     // return Column(
//     //   children: [
//     //     task(
//     //       "Task:1",
//     //       "Buy milk after work",
//     //     ),
//     //     task("Task:1", "Get tasks Completed")
//     //   ],
//     // );
//   }

//   Widget task(String title, String desc, index) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         elevation: 5,
//         child: ListTile(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           tileColor: Colors.white,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(title),
//               IconButton(
//                   onPressed: () {
//                     setState(() {
//                       todo.removeAt(index);
//                     });
//                   },
//                   icon: Icon(Icons.delete))
//               //  Icon(Icons.delete),
//             ],
//           ),
//           subtitle: Text(desc),
//         ),
//       ),
//     );
//   }
// }
