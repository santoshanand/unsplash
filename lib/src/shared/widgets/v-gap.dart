import 'package:flutter/material.dart';

class VGap extends StatelessWidget {
  final double gap;

  const VGap({Key key, this.gap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (this.gap == null || this.gap.isNaN) ? 20 : this.gap,
    );
  }
}
