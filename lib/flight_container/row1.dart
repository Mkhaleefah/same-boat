import 'dart:math';

import 'package:flutter/material.dart';

class Row1 extends StatefulWidget {
  const Row1({super.key});

  @override
  State<Row1> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<Row1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: size.height * .10,
          width: size.width * .95,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22), topRight: Radius.circular(22)),
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
                              color: Colors.white, fontWeight: FontWeight.bold),
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
      // SizedBox(
      //   height: 3,
      // ),
      // Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //     height: size.height * .10,
      //     width: size.width * .95,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(0), color: Colors.white),
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 20, top: 18),
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Text(
      //                 '1 stop In',
      //                 style: TextStyle(
      //                     color: Colors.black, fontWeight: FontWeight.bold),
      //               ),
      //               // SizedBox(
      //               //   width: 1,
      //               // ),
      //               Text(
      //                 'FRA',
      //                 style: TextStyle(
      //                     color: Colors.black, fontWeight: FontWeight.bold),
      //               ),
      //               SizedBox(
      //                 width: 182,
      //               ),
      //               Transform.rotate(angle: pi / 2, child: Icon(Icons.flight)),
      //               Text(
      //                 'Condor',
      //                 style: TextStyle(color: Colors.black54),
      //               )
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 height: 25,
      //                 width: 70,
      //                 decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(30),
      //                     color: Color.fromARGB(168, 2, 95, 5)),
      //                 child: Center(
      //                     child: Text(
      //                   '1h 50m',
      //                   style: TextStyle(
      //                       color: Colors.white, fontWeight: FontWeight.bold),
      //                 )),
      //               ),
      //               SizedBox(
      //                 width: 180,
      //               ),
      //               Transform.rotate(angle: pi / 2, child: Icon(Icons.flight)),
      //               Text(
      //                 'Lufthansa',
      //                 style: TextStyle(color: Colors.black54),
      //               )
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // SizedBox(
      //   height: 2,
      // ),
      // Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //     height: size.height * .10,
      //     width: size.width * .95,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(20),
      //             bottomRight: Radius.circular(20)),
      //         color: Colors.white),
      //     child: Row(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(top: 10),
      //           child: Column(
      //             children: [
      //               Text(
      //                 'Emissions',
      //                 style: TextStyle(
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 15),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(left: 20),
      //                 child: Container(
      //                   height: 25,
      //                   width: 100,
      //                   decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(30),
      //                       color: Color.fromARGB(255, 195, 241, 216)),
      //                   child: Center(
      //                     child: Text(
      //                       '1,973Kg CO2',
      //                       style: TextStyle(
      //                           color: Colors.greenAccent,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         // SizedBox(
      //         //   width: 80,
      //         // ),
      //         Padding(
      //           padding: const EdgeInsets.only(left: 140, bottom: 20, top: 10),
      //           child: Container(
      //             height: 50,
      //             width: 90,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(12),
      //                 color: Colors.amber),
      //             child: Center(
      //                 child: Text(
      //               '\$1,694',
      //               style: TextStyle(fontWeight: FontWeight.bold),
      //             )),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    ]);
  }
}
