import 'dart:math';

import 'package:flutter/material.dart';

//import 'container/Row1.dart';
import 'flight_container/flight1.dart';
import 'flight_container/row2.dart';

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
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton.filled(
                  color: Colors.black,
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      alignment: Alignment.center),
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new)),
              searchBar(),
              IconButton.filled(
                  color: Colors.black,
                  style: IconButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  icon: Icon(Icons.sort))
              // CircleAvatar(
              //     backgroundColor: Colors.white,
              //     child: Icon(Icons.drag_handle_rounded))
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .10,
            width: size.width * .95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '7:45 PM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            '13h 55m',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '6:30 PM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          '+1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SFO',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'AMS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '1 stop In',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(
                      //   width: 1,
                      // ),
                      Text(
                        'FRA',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 182,
                      ),
                      Transform.rotate(
                          angle: pi / 2, child: Icon(Icons.flight)),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Condor',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(168, 2, 95, 5)),
                        child: Center(
                            child: Text(
                          '1h 50m',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Transform.rotate(
                          angle: pi / 2, child: Icon(Icons.flight)),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Lufthansa',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  )
                ],
              ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        'Emissions',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 195, 241, 216)),
                          child: Center(
                            child: Text(
                              '1,973Kg CO2',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 72, 189, 133),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 80,
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 140, bottom: 20, top: 10),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber),
                    child: Center(
                        child: Text(
                      '\$1,694',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .10,
            width: size.width * .95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '1:30 PM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            '13h 55m',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '4:45 PM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          '+1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SFO',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'AMS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '1 stop In',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'IST',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      Transform.rotate(
                          angle: pi / 2, child: Icon(Icons.flight)),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Turkish Airlines',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(168, 2, 95, 5)),
                        child: Center(
                            child: Text(
                          '1h 50m',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                    ],
                  )
                ],
              ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        'Emissions',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[300]),
                          child: Center(
                            child: Text(
                              '3,003Kg CO2',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 80,
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 140, bottom: 20, top: 10),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber),
                    child: Center(
                        child: Text(
                      '\$2,421',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .10,
            width: size.width * .95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '6:30 PM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            '30h 25m',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '9:55 AM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          '+2',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SFO',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'AMS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '1 stop In',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'IST',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Transform.rotate(
                          angle: pi / 2, child: Icon(Icons.flight)),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Turkish Airlines',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orangeAccent[100]),
                        child: Center(
                            child: Text(
                          '14h 05m',
                          style: TextStyle(
                              color: Colors.orange[800],
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.warning),
                      SizedBox(
                        width: 150,
                      ),
                      Transform.rotate(
                          angle: pi / 2, child: Icon(Icons.flight)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Aer Lingus',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  )
                ],
              ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        'Emissions',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orangeAccent[100]),
                          child: Center(
                            child: Text(
                              '3,694Kg CO2',
                              style: TextStyle(
                                  color: Colors.orange[800],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 80,
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 140, bottom: 20, top: 10),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber),
                    child: Center(
                        child: Text(
                      '\$2,934',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //  Align(

        //  ),
        flightOne(context, '4:00AM'),
       // Row1(),
        SizedBox(
          height: 3,
        ),
        rowPage2(context),
        SizedBox(
          height: 3,
        ),
        rowPage3(context),
      ]),
    );
  }

  Widget searchBar() {
    return Expanded(
      child: Column(
        children: [
          Text(
            'SEARCHING',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 75,
                ),
                child: Row(
                  children: [
                    Container(
                      // height: size.height * 10,
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                    ),
                    Container(
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                    ),
                    Container(
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
