import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_haritask/flight_container/kitchen.dart';

class RobeticUi extends StatefulWidget {
  const RobeticUi({super.key});

  @override
  State<RobeticUi> createState() => _RobeticUiState();
}

class _RobeticUiState extends State<RobeticUi> with TickerProviderStateMixin {
  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 10,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[700]),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dataset,
                    color: Colors.white,
                  )),
            )
          ],
          backgroundColor: Colors.black12,
          title: Row(
            children: [
              Text(
                'Host',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '®',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 19,
                  //fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            TabBar(
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              labelColor: Color(0xffFF6F40),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: CircleTabIndicator(color: Colors.orange, radius: 4),
              tabs: [
                Tab(
                  text: 'Kitchen',
                ),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
                Tab(text: 'Tab 4'),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Kitchen(),
                Text('page2'),
                Text('page3'),
                Text('page4'),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - 39);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
