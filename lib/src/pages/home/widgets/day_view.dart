import 'package:flutter/material.dart';
import 'package:unsplash/src/pages/home/widgets/button_view.dart';

class DayView extends StatelessWidget {
  const DayView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/png/mouth.png'),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Photo of the day',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Pink lips',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                ButtonView()
              ],
            ),
          )
        ],
      ),
    );
  }
}
