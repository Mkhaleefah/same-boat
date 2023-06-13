// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondUiPage extends StatefulWidget {
  const SecondUiPage({super.key});

  @override
  State<SecondUiPage> createState() => _SecondUiPageState();
}

class _SecondUiPageState extends State<SecondUiPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff1F1932),
      appBar: AppBar(
        backgroundColor: const Color(0xff1F1932),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ))
        ],
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 81, 13, 200),
                    radius: 18,
                    child: Text(
                      'GN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text(
                    'Group Name',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 45),
                    child: Text('25 Members',
                        style: TextStyle(color: Colors.amber, fontSize: 15)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: size.height * .21,
                      width: size.width * .95,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: Color.fromARGB(255, 81, 13, 200)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Courtney is create spam?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.play_arrow_rounded),
                                  label: const Text(
                                    'Vote In',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.pink,
                                    onPrimary: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 29),
                                      child: Text(
                                        '1st Option[75%]',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 8,
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 8,
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 8,
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 8,
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.pink,
                                      child: CircleAvatar(
                                          radius: 8,
                                          backgroundColor: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: const LinearProgressIndicator(
                                        value: 0.7,
                                        backgroundColor: Colors.grey,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.pink),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        '2nd Option[50%]',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 8,
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 7,
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                          radius: 8,
                                          child: Image.network(
                                              'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.pink),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: const LinearProgressIndicator(
                                        value: 0.7,
                                        backgroundColor: Colors.grey,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.pink),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: Column(
                      children: [
                        Container(
                          height: 340,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 20),
                            child: ListView(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Container(
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.black),
                                      child: Center(
                                        child: Text(
                                          'Today',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                rightSide(),
                                leftSide('data is passing here are not',
                                    'images/place_images.jpg'),
                                rightSide(),
                                leftSide('klhaleefah is going to home',
                                    'images/place_images.jpg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 250),
                                  child: CircleAvatar(
                                    radius: 60,
                                    child: Image.network(
                                        'https://static.punjabkesari.in/multimedia/09_48_084323109smile-please-1.jpg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 3,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Color(0xff1F1932)),
                                        child: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 220,
                                  child: Material(
                                    color: Color(0xff1F1932),
                                    borderRadius: BorderRadius.circular(50),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        hintText: 'Tpye Message...',
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.add_circle,
                                          color: Colors.white,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                        suffixIcon: Icon(Icons.send),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Color(0xff1F1932),
                                  child: Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: Color(0xff1F1932),
        destinations: [
          NavigationDestination(
            icon: Image.asset('images/icon_home.png'),
            label: '',
          ),
          NavigationDestination(
            icon: Image.asset('images/icon_search.png'),
            label: '',
          ),
          NavigationDestination(
            icon: Image.asset('images/icon_add.png'),
            label: '',
          ),
          NavigationDestination(
            icon: Image.asset('images/icon_notification.png'),
            // icon: Icon(
            //   Icons.notifications,
            //   color: Colors.white,
            // ),
            label: '',
          ),
          NavigationDestination(
            icon: Image.asset('images/icon_profile.png'),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget leftSide(String message1, String imageurl) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20, backgroundImage: AssetImage(imageurl),
                // child: Image.asset(
                //   imageurl,
                //   fit: BoxFit.cover,
                // ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        color: Color(0xffE3E3E3)),
                    child: Center(
                      child: Text(
                        message1,
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 250),
          child: Text(
            '12:00 AM',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget rightSide() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50)),
                    color: Colors.purple),
                child: Center(
                  child: Text(
                    'Lorem lpsum is simply dummy',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 300),
          child: Text(
            '12:00 AM',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
