import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_haritask/flight_container/switch.dart';

class Kitchen extends StatefulWidget {
  Kitchen({super.key});

  @override
  State<Kitchen> createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
            height: size.height * .25,
            width: size.width * .90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff312F2E)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Air Conditoner',
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                      SwitchScreen(),
                    ],
                  ),
                  Text(
                    'LGS12EQ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '21.4',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '°',
                        style: TextStyle(color: Colors.grey, fontSize: 70),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[900],
                        radius: 30,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        height: 5,
                        width: 8,
                        color: Colors.grey,
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          radius: 30,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              )))
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * .20,
                    width: size.width * .65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffFF6F40)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Robotic Cleaner',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'LGS12EQ',
                                style: TextStyle(
                                    color: Colors.grey[350],
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: CircularProgressIndicator(
                                      value: 0.61,
                                      color: Colors.white,
                                      backgroundColor: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '61',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              'images/cleanser.png',
                              height: 80,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: size.height * .20,
                    width: size.width * .65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff353331)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Speaker',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'BSP10',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            SwitchScreen(),
                          ],
                        ),
                        Image.asset(
                          'images/sony_spaker.png',
                          height: 80,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: size.height * .45,
                    width: size.width * .25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[800]),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: size.height * .25,
                      width: size.width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffFF6F40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Divider(
                            color: Colors.white,
                            thickness: 8,
                            indent: 15,
                            endIndent: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 10,
                      right: 35,
                      child: Text(
                        '32%',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
