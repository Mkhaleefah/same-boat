import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SameBoat extends StatelessWidget {
  const SameBoat({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  shape: CircleBorder(
                      side: BorderSide(width: 1, color: Colors.white)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?cs=srgb&dl=pexels-chloe-1043474.jpg&fm=jpg',
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Krishna Mohan',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(color: Colors.white),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '15 Jan 2023',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Color(0xfffF0AE2E),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle,
                        size: 6,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Ends in 21hrs',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Color(0xfffF0AE2E),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
      backgroundColor: Color(0xff1F1932),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                firstLine(),
                SizedBox(
                  height: 10,
                ),
                secondLine(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget firstLine() {
    return Center(
      child: Text(
        'How Many Cups Of Coffee Do You Drink Each Day?',
        style: GoogleFonts.lato(
          color: const Color(
            0xff1000000,
          ),
          fontSize: 19,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget secondLine(context) {
    return Column(
      children: [
        Text(
          'Lorem lpsum Is Simply Dummy Text Of The Printing And Typesetting Industry.Loream',
          style: GoogleFonts.lato(
            color: const Color(
              0xff1000000,
            ),
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://media.istockphoto.com/id/1019461046/photo/wild-horses-running-free.jpg?s=612x612&w=0&k=20&c=00luEeeClnG_NZTu-E3lM4-BwNOsKRag-5e-lxv3XbY=')),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'images/Icon_heart.svg',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '251',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'images/Icon_comment.svg',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '251',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'images/Icon_share.svg',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '251',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        secondPerson(context),
      ],
    );
  }

  Widget secondPerson(context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-2379005.jpg&fm=jpg')),
              SizedBox(
                width: 15,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alan Kingsly',
                    style: GoogleFonts.lato(
                      color: const Color(
                        0xff1000000,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '15 Jan 2023',
                    style: GoogleFonts.lato(
                      color: const Color(
                        0xffF0AE2E,
                      ),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 140,
              ),
              SvgPicture.asset(
                'images/Icon_heart.svg',
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '25',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem lpsum Is Simply Dummy Text Of The Printing And Typesetting Industry.Loream',
            style: GoogleFonts.lato(
              color: const Color(
                0xff1000000,
              ),
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/1019461046/photo/wild-horses-running-free.jpg?s=612x612&w=0&k=20&c=00luEeeClnG_NZTu-E3lM4-BwNOsKRag-5e-lxv3XbY=')),
              ),
              Positioned(
                  bottom: -20,
                  right: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text(
                      'Declare Winner',
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          thirdPerson(context),
        ],
      ),
    );
  }

  Widget thirdPerson(context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-2379005.jpg&fm=jpg')),
              SizedBox(
                width: 15,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Krishna Priya',
                    style: GoogleFonts.lato(
                      color: const Color(
                        0xff1000000,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '15 Jan 2023',
                    style: GoogleFonts.lato(
                      color: const Color(
                        0xffF0AE2E,
                      ),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 149,
              ),
              SvgPicture.asset(
                'images/icon_plane_heart.svg',
                height: 20,
                width: 20,
              ),
              // Text(
              //   '25',
              //   style: GoogleFonts.roboto(
              //       textStyle: TextStyle(
              //     fontSize: 15,
              //     fontWeight: FontWeight.w500,
              //   )),
              // ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem lpsum Is Simply Dummy Text Of The Printing And Typesetting Industry.Loream',
            style: GoogleFonts.lato(
              color: const Color(
                0xff1000000,
              ),
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/1019461046/photo/wild-horses-running-free.jpg?s=612x612&w=0&k=20&c=00luEeeClnG_NZTu-E3lM4-BwNOsKRag-5e-lxv3XbY=')),
              ),
              Positioned(
                  bottom: -20,
                  right: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text(
                      'Declare Winner',
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
