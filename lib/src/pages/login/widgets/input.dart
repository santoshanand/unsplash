import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String placeHolder;
  final bool isPassword;
  const Input({
    Key key,
    this.placeHolder,
    this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.isPassword == null ? false : this.isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffEDEDED),
        hintText: this.placeHolder == null ? '' : this.placeHolder,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Color(0xffEDEDED), width: 0.0),
        ),
        contentPadding: EdgeInsets.all(18),
      ),
    );
  }
}
