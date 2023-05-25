import 'package:flutter/material.dart';

class MyShowApp extends StatefulWidget {
  const MyShowApp({super.key});

  @override
  State<MyShowApp> createState() => _MyShowAppState();
}

// class CardItem {
//   final String urlImage;
//   final String title;
//   const CardItem({required this.urlImage, required this.title});
// }

class _MyShowAppState extends State<MyShowApp> {
  // List<CardItem> items = [
  //   CardItem(
  //     urlImage:
  //         'https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png',
  //     title: 'Education',
  //   ),
  //   CardItem(
  //     urlImage:
  //         'https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png',
  //     title: 'Education',
  //   ),
  //   CardItem(
  //     urlImage:
  //         'https://i.pinimg.com/originals/ce/8a/07/ce8a0754827a1b19c2247333338fa5f0.png',
  //     title: 'Education',
  //   )
  // ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * .30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.black87),
                child: Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 70, right: 20, left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search Campaign',
                              filled: true,
                              fillColor: Colors.black54,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70, right: 20),
                      child: Container(
                        height: 50,
                        width: 50,
                        // width: size.width * .15,
                        // height: size.height * .15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black54),
                        child: Icon(
                          Icons.notification_add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Container(
                    height: size.height * .20,
                    width: size.width * .90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black87),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: Text(
                          '🎉You can dontation for other people',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Container(
                    height: size.height * .16,
                    width: size.width * .90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: Column(
                      children: [
                        Text(
                          'Your Donaction Pocket',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "\$365,500",
                          style: TextStyle(color: Colors.white, fontSize: 40),
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Discover Campaign',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                'View all',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
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
          SizedBox(
            height: 10,
          ),
          // Container(
          //   decoration: BoxDecoration(),
          // ),
          Container(
            height: 300,
            // child: ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: items.length,
            //   itemBuilder: (context, index) => buildCard(item: items[index]),
            // ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCard(),
              ],
            ),
          ),
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

  Widget buildCard() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(249, 248, 248, 1),
                          blurRadius: 0,
                          spreadRadius: 5.0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(12)),
                // height: 450,
                //  color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'By',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Aman Pal',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Urgent! Help The',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Mosque Of The Jember',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Container(
                        // padding: EdgeInsets.only(right: 20),
                        height: 10,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ 23,400",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          '31daysleft',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        // padding: EdgeInsets.only(right: 20),
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            'Donation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'By',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Aman Pal',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Urgent! Help The',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Mosque Of The Jember',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Container(
                        // padding: EdgeInsets.only(right: 20),
                        height: 10,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ 23,400",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          '31daysleft',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            'Donation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'By',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Aman Pal',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Urgent! Help The',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Mosque Of The Jember',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Container(
                        // padding: EdgeInsets.only(right: 20),
                        height: 10,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ 23,400",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          '31daysleft',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            'Donation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'By',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Aman Pal',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Urgent! Help The',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Mosque Of The Jember',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Container(
                        height: 10,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ 23,400",
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          '31daysleft',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        // padding: EdgeInsets.only(right: 20),
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            'Donation',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
