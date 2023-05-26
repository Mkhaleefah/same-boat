import 'package:flutter/material.dart';

class ThirdUiPage extends StatefulWidget {
  const ThirdUiPage({super.key});

  @override
  State<ThirdUiPage> createState() => _ThirdUiPageState();
}

class _ThirdUiPageState extends State<ThirdUiPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                //  radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'SEARCHING',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Divider(
                          // height: 10,
                          color: Colors.black,
                          thickness: 5,
                          indent: 160,
                          endIndent: 160,
                        ),
                        Divider(
                          // height: 10,
                          color: Colors.black26,
                          thickness: 5,
                          indent: 130,
                          endIndent: 130,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.notifications))
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .10,
            width: size.width * .95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Row(
              children: [
                Text(
                  '7:45 PM',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    Divider(
                      thickness: 5,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: Text(
                    'data us her passing',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .10,
            width: size.width * .95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0), color: Colors.white),
            child: Row(
              children: [
                Text(
                  '7:45 PM',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'data us her passing',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .10,
            width: size.width * .95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white),
            child: Row(
              children: [
                Text(
                  '7:45 PM',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'data us her passing',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
