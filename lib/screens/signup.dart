import 'package:BenchStep_Proto/route_transitions/pageSlideRoute.dart';
import 'package:BenchStep_Proto/screens/main/components/bigLogo.dart';
import 'package:BenchStep_Proto/screens/main/components/plainLayoutBack.dart';
import 'package:BenchStep_Proto/screens/main/main_page.dart';
import 'package:BenchStep_Proto/screens/orgLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

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
                'Create an account',
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
                    hintText: 'Full name (Required)'),
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
                    hintText: 'Email (Required)'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.4))),
                    hintText: 'Password (Required)',
                    suffixIcon: Icon(
                      CupertinoIcons.eye,
                      size: 30,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
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
                        child: Text('Create an account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    child: Divider(
                      color: Colors.black.withOpacity(.3),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.black.withOpacity(.3)),
                    ),
                  ),
                  Container(
                    width: 140,
                    child: Divider(
                      color: Colors.black.withOpacity(.3),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: GestureDetector(
                onTap: () => Navigator.of(context, rootNavigator: true)
                    .push(PageSlideRoute(page: OrganizationLogin())),
                child: Text(
                  'Sign up with your organization',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
