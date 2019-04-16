import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Color color;
  final double borderRadius;
  const Button({
    Key key,
    this.label,
    this.color,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: FlatButton(
        color: this.color == null ? Colors.transparent : this.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(this.borderRadius == null ? 0 : this.borderRadius),
          ),
        ),
        child: Text(
          this.label == null ? 'My Button' : this.label,
          style: TextStyle(
              color: this.color == null ? Colors.black : Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }
}
