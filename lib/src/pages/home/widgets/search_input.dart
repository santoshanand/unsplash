import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final String placeHolder;
  const SearchInput({
    Key key,
    this.placeHolder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 12, bottom: 12),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        filled: true,
        hintText: this.placeHolder == null
            ? 'Search high resolution photos'
            : this.placeHolder,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
      ),
    );
  }
}
