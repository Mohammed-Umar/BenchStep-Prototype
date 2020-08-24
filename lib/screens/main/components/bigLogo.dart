import 'package:flutter/material.dart';

class BigLogo extends StatelessWidget {
  const BigLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: Image.asset('assets/logo.png'),
    );
  }
}
