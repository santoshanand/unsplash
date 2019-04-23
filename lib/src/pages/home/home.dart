import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unsplash/src/pages/home/widgets/day_view.dart';
import 'package:unsplash/src/pages/home/widgets/follow_view.dart';
import 'package:unsplash/src/pages/home/widgets/search_input.dart';
import 'package:unsplash/src/shared/widgets/v-gap.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          centerTitle: true,
          actions: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/png/avatar.png'),
            ),
          ],
          title: SvgPicture.asset(
            'assets/images/svg/named_logo.svg',
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SearchInput(),
                VGap(),
                FollowView(),
                VGap(),
                DayView(),
                VGap(
                  gap: 40,
                ),
                Text(
                  'Trending',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                VGap(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    children: <Widget>[
                      Image.asset('assets/images/png/1.png'),
                      Image.asset('assets/images/png/2.png'),
                      Image.asset('assets/images/png/1.png'),
                      Image.asset('assets/images/png/2.png'),
                      Image.asset('assets/images/png/1.png'),
                      Image.asset('assets/images/png/2.png'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
