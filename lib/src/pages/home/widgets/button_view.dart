import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Material(
          color: Colors.white,
          shape: CircleBorder(),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
          elevation: 0,
        ),
        SizedBox(
          width: 6,
        ),
        Material(
          color: Colors.white,
          shape: CircleBorder(),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        SizedBox(
          width: 6,
        ),
        Material(
          color: Colors.white,
          shape: CircleBorder(),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_downward),
          ),
          elevation: 0,
        ),
      ],
    );
  }
}
