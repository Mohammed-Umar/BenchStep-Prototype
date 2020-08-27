import 'package:flutter/material.dart';

class ExploreFeatured extends StatelessWidget {
  const ExploreFeatured({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Featured Courses will be added soon',
          style: TextStyle(
              color: Colors.blue[800],
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
