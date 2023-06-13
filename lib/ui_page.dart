import 'package:flutter/material.dart';

class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton.filled(
              color: Colors.black,
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, alignment: Alignment.center),
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new)),
          title: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Material(
                // color: Colors.blue,
                shape: CircleBorder(
                    side: BorderSide(width: 3, color: Colors.green)),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/casual-senior-man-home_23-2148962323.jpg',
                  ),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sam Adams',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@SamAD_',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 11,
                    ),
                  )
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'View Profile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    leftSide(size),
                    SizedBox(
                      height: 20,
                    ),
                    rightSide(size),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: messageBox(),
            ),
          ],
        ));
  }

  Widget rightSide(Size size) {
    return Align(
      alignment: FractionalOffset.bottomRight,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        width: size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 4),
                blurRadius: 0.5,
              )
            ]),
        child: Text(
          'Yeah, i will call you later...',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget leftSide(Size size) {
    return Align(
      alignment: FractionalOffset.bottomLeft,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        width: size.width * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 217, 209, 209),
                offset: Offset(1, 4),
                blurRadius: 0.5,
              )
            ]),
        child: Text(
          'Hey man do you have any ideas for a new video!!!',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Widget messageBox() {
    return Material(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Message..',
            hintStyle:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(5),
              child: Material(
                color: Colors.amber,
                shape: CircleBorder(side: BorderSide(color: Colors.white)),
                child: Icon(
                  Icons.camera_alt_sharp,
                  color: Colors.white,
                ),
              ),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.mic),
              color: Colors.black,
              onPressed: () {},
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )
            //  border: InputBorder.none
            ),
      ),
    );
  }
}
