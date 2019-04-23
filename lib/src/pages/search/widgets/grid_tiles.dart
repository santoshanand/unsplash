import 'package:flutter/material.dart';

class GridTiles extends StatefulWidget {
  GridTiles({Key key}) : super(key: key);

  _GridTilesState createState() => _GridTilesState();
}

class _GridTilesState extends State<GridTiles> {
  var images = [
    'assets/images/png/11.png',
    'assets/images/png/22.png',
    'assets/images/png/3.png',
    'assets/images/png/4.png',
    'assets/images/png/5.png',
    'assets/images/png/6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List<Widget>.generate(6, (index) {
          return GridTile(
            child: Image.asset(
              images[index],
              fit: BoxFit.fill,
            ),
          );
        }),
      ),
    );
  }
}
