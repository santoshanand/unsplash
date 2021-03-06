import 'package:flutter/material.dart';
import 'package:unsplash/src/pages/search/search.dart';

class FollowView extends StatelessWidget {
  const FollowView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/images/png/avatar-img.png'),
        ),
        SizedBox(
          width: 10,
        ),
        Text('Lan Dooley'),
        Spacer(),
        FlatButton(
          child: Text('Follow'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Search()),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.black,
          textColor: Colors.white,
        )
      ],
    );
  }
}
