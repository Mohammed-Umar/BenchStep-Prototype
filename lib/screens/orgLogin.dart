import 'package:BenchStep_Proto/route_transitions/pageSlideRoute.dart';
import 'package:BenchStep_Proto/screens/main/components/bigLogo.dart';
import 'package:BenchStep_Proto/screens/main/components/plainLayoutBack.dart';
import 'package:BenchStep_Proto/screens/main/main_page.dart';
import 'package:flutter/material.dart';

class OrganizationLogin extends StatelessWidget {
  const OrganizationLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PlainLayoutBack(),
            BigLogo(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Enter your organization URL',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.4))),
                    hintText: '(ex: company.com or company.org)'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: ButtonTheme(
                height: 50,
                child: FlatButton(
                    onPressed: () => Navigator.of(context, rootNavigator: true)
                        .push(PageSlideRoute(page: MainScreen())),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Colors.blue[800],
                    textColor: Colors.white,
                    child: Center(
                        child: Text('Continue',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
