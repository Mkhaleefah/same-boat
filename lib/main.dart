// import 'package:flutter/material.dart';
// import 'package:ui_haritask/flight_container/flight1.dart';
// import 'package:ui_haritask/homepage.dart';
// import 'package:ui_haritask/second_ui.dart';
// import 'package:ui_haritask/show.dart';
// import 'package:ui_haritask/third_ui.dart';
// import 'package:ui_haritask/todo/add.dart';
// import 'package:ui_haritask/todo/viewtask.dart';
// import 'package:ui_haritask/ui_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(

//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       // home: HomePage(),
//       //  home: MyShowApp(),
//       //home: ThirdUiPage(),
//       // home: SecondUiPage(),
//       //  home: UiPage(),
//       home: ViewTask(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ui_haritask/sameboat/sameboat_ui.dart';
import 'package:ui_haritask/todo/viewtask.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
      debugShowCheckedModeBanner: false,
      // home: ViewTask(),
      home: SameBoat(),
    );
  }
}
