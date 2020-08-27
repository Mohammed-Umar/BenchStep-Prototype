import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      appBar: AppBar(
          title: Text('Learn'),
          centerTitle: true,
          backgroundColor: Color(0xFF464b57)),
    );
  }
}
