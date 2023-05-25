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
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff1F1932),
      // ),
      body: ListView(children: [
        Column(
          children: [
            Stack(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28,
                          child: const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 81, 13, 200),
                            radius: 25,
                            child: Text(
                              'GN',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Text('25 Members',
                                style: TextStyle(color: Colors.amber)),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Container(
                      height: size.height * .20,
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
                                    Text(
                                      '1st Option[75%]',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
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
                                    Container(
                                      height: 20,
                                      width: 20,
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
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '2nd Option[50%]',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
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
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.pink),
                                    ),

                                    // CircleAvatar(
                                    //   backgroundColor: colo,
                                    //   radius: 7,
                                    //   child: Image.network(
                                    //       'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
                                    // ),
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
                    padding: const EdgeInsets.only(top: 270),
                    child: Column(
                      children: [
                        Container(
                          height: 650,
                          width: 600,
                          // height: size.height * .20,
                          // width: size.width * .95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 20,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.black),
                                    child: Center(
                                      child: Text(
                                        'Today',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
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
                                                bottomLeft:
                                                    Radius.circular(50)),
                                            color: Colors.purple),
                                        child: Center(
                                          child: Text(
                                            'Lorem lpsum is simply dummy',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
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
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        child: Image.network(
                                            'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
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
                                                    topRight:
                                                        Radius.circular(50),
                                                    bottomRight:
                                                        Radius.circular(50),
                                                    topLeft:
                                                        Radius.circular(50),
                                                    bottomLeft:
                                                        Radius.circular(50)),
                                                color: Color(0xffE3E3E3)),
                                            child: Center(
                                              child: Text(
                                                'Lorem lpsum is simply dummy',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12),
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
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Container(
                                    height: 60,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          //  bottomLeft: Radius.circular(0)
                                        ),
                                        color: Color(0xffE3E3E3)),
                                    child: Center(
                                      child: Text(
                                        'Lorem lpsum is simply dummy text of the printing and',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 250),
                                  child: Text(
                                    '12:00 AM',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
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
                                                bottomLeft:
                                                    Radius.circular(50)),
                                            color: Colors.purple),
                                        child: Center(
                                          child: Text(
                                            'Lorem lpsum is simply dummy',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
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
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        child: Image.network(
                                            'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg'),
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
                                                    topRight:
                                                        Radius.circular(50),
                                                    bottomRight:
                                                        Radius.circular(50),
                                                    topLeft:
                                                        Radius.circular(50),
                                                    bottomLeft:
                                                        Radius.circular(50)),
                                                color: Color(0xffE3E3E3)),
                                            child: Center(
                                              child: Text(
                                                'Lorem lpsum is simply dummy',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12),
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
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Container(
                                    height: 60,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          //  bottomLeft: Radius.circular(0)
                                        ),
                                        color: Color(0xffE3E3E3)),
                                    child: Center(
                                      child: Text(
                                        'Lorem lpsum is simply dummy text of the printing and',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 250),
                                  child: Text(
                                    '12:00 AM',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 250),
                                  child: CircleAvatar(
                                    radius: 60,
                                    child: Image.network(
                                        'https://static.punjabkesari.in/multimedia/09_48_084323109smile-please-1.jpg'),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
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
                                    Container(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Type Message....',
                                            filled: true,
                                            fillColor: Colors.black54,
                                            hintStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            prefixIcon: Icon(
                                              Icons.add_circle,
                                              color: Colors.white,
                                            ),
                                            suffixIcon: Icon(Icons.send),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            )),
                                      ),
                                      height: 50,
                                      width: 220,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Color(0xff1F1932)),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color(0xff1F1932)),
                                      child: Icon(
                                        Icons.mic,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ]),

      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: Color(0xff1F1932),
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add_card,
              color: Colors.white,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_2,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
