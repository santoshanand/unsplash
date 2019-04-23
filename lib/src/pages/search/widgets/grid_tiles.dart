import 'package:flutter/material.dart';

class GridTiles extends StatefulWidget {
  GridTiles({Key key}) : super(key: key);

  _GridTilesState createState() => _GridTilesState();
}

class _GridTilesState extends State<GridTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.red,
      child: GridView.count(
        crossAxisCount: 2,
        children: List<Widget>.generate(16, (index) {
          print('Herer' + index.toString());
          return GridTile(
            child: Card(
              color: Colors.blue.shade200,
              child: Center(
                child: Text('tile $index'),
              ),
            ),
          );
        }),
      ),
    );
  }
}
