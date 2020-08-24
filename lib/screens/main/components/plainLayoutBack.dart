import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlainLayoutBack extends StatelessWidget {
  const PlainLayoutBack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
          padding: EdgeInsets.symmetric(vertical: 60),
          icon: Icon(
            CupertinoIcons.back,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop()),
    );
  }
}
