import 'package:flutter/material.dart';
import 'package:ui_haritask/show.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: 50,
      // width: 50,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(30),
      // ),

      //  backgroundColor: Colors.black,

      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black87),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search Campaign',
                                filled: true,
                                fillColor: Colors.black,
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Icon(
                            Icons.notification_add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //  ShowImage(),
                    Expanded(
                      child: Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(7, 104, 184, 1)),
                        child: Column(
                          children: [
                            Text(
                              'Your Donation Pocket',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "\$365,500",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            Container(
                              height: 30,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  'Top Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // Icon(Icons.call_to_action)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ShowImage(),
          Container(
            // padding: EdgeInsets.only(bottom: 10),
            height: 30,
            width: 320,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            child: Text(
              '🎉You can dontation for other people >',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text(
                    'Discover Campaign',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.blue,
                      child: Container(
                        height: 100,
                        width: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                          "https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png",
                        ),
                      ),
                      radius: 30,
                    ),
                    Text(
                      'Education',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.blue,
                      child: Container(
                        height: 100,
                        width: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                          "https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png",
                        ),
                      ),
                      radius: 30,
                    ),
                    Text(
                      'Fundraising',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.blue,
                      child: Container(
                        height: 100,
                        width: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                          "https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png",
                        ),
                      ),
                      radius: 30,
                    ),
                    Text(
                      'Disasters',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.blue,
                      child: Container(
                        height: 100,
                        width: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                          "https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png",
                        ),
                      ),
                      radius: 30,
                    ),
                    Text(
                      'Health',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.blue,
                      child: Container(
                        height: 100,
                        width: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                          "https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png",
                        ),
                      ),
                      radius: 30,
                    ),
                    Text(
                      'Education',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.blue,
                      child: Container(
                        height: 100,
                        width: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                          "https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png",
                        ),
                      ),
                      radius: 30,
                    ),
                    Text(
                      'Education',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Urgent Fundraising',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'view all',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(left: 5, right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                // color: Colors.amber
                              ),
                              child: Image.network(
                                  'https://thumbs.dreamstime.com/z/buda-castle-budapest-royal-palace-passenger-boats-danube-river-hungary-37413895.jpg'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'By',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'Aman Pal',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'urgent! Help The Con',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text('Mosquee Of The'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.amber),
                          child: Image.network(
                              'https://thumbs.dreamstime.com/z/buda-castle-budapest-royal-palace-passenger-boats-danube-river-hungary-37413895.jpg'),
                        ),
                      ],
                    ),
                  ],
                ),
                //Text('source')
              ],
            ),
          ),
          // Stack(
          //   children: [
          //     Column(
          //       children: [
          //         Container(
          //           height: 100,
          //           width: 100,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(30),
          //           ),
          //           child: Image.network(
          //               'https://thumbs.dreamstime.com/z/buda-castle-budapest-royal-palace-passenger-boats-danube-river-hungary-37413895.jpg'),
          //         ),
          //         Text(
          //           'By Aman Pal',
          //           style: TextStyle(color: Colors.black),
          //         ),
          //         Text('Urgent!Help The Construction')
          //         // Container(
          //         //   height: 100,
          //         //   width: 100,
          //         //   decoration: BoxDecoration(
          //         //     borderRadius: BorderRadius.circular(30),
          //         //     //color: Colors.amber
          //         //   ),
          //         //   child: Text('data is going'),
          //         // )
          //       ],
          //     ),
          //   ],
          // )
        ],
      ),

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.explore),
              label: 'Donation',
            ),
            NavigationDestination(
              icon: Icon(Icons.rectangle_outlined),
              label: 'My Donation',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2),
              label: 'profile',
            ),
          ],
        ),
      ),
    );
  }

  // Widget PageItem(int index) {
  //   return Stack(
  //     children: [
  //       Align(
  //         alignment: Alignment.bottomCenter,
  //         child: Container(
  //           height: 220,
  //           margin: EdgeInsets.only(left: 40, right: 40),
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(30),
  //                color: Colors.green),
  //           child: Text('data is here passing'),
  //         ),
  //       ),
  //       Container(
  //         height: 220,
  //         margin: EdgeInsets.only(left: 5, right: 5),
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(30), color: Colors.green),
  //       ),
  //     ],
  //   );
  // }
}
