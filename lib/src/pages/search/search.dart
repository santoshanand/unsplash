import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unsplash/src/pages/home/widgets/search_input.dart';
import 'package:unsplash/src/pages/search/widgets/button_row.dart';
import 'package:unsplash/src/pages/search/widgets/grid_tiles.dart';
import 'package:unsplash/src/shared/widgets/v-gap.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                SearchInput(
                  placeHolder: 'Nature',
                ),
                VGap(),
                ButtonRow(),
                VGap(
                  gap: 40,
                ),
                Text(
                  'Nature',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                VGap(),
                GridTiles(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
