import 'package:BenchStep_Proto/route_transitions/pageSlideRoute.dart';
import 'package:BenchStep_Proto/screens/login.dart';
import 'package:BenchStep_Proto/screens/main/main_page.dart';
import 'package:BenchStep_Proto/screens/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Image.asset('assets/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        // style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                              text:
                                  "A one-stop-shop for all your training needs",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15)),
                          TextSpan(
                              text:
                                  "\nCreate Courses, Manage learners, Define Learning Path and many more.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13))
                        ])),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ButtonTheme(
                  height: 50,
                  child: OutlineButton(
                      onPressed: () =>
                          Navigator.of(context, rootNavigator: true)
                              .push(PageSlideRoute(page: MainScreen())),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.white,
                      textColor: Colors.black,
                      borderSide: BorderSide(color: Colors.grey),
                      child: Center(
                          child: Text('Continue as Guest',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)))),
                ),
              ),
              Divider(
                color: Colors.black.withOpacity(.5),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ButtonTheme(
                  height: 50,
                  child: FlatButton(
                      onPressed: () =>
                          Navigator.of(context, rootNavigator: true)
                              .push(PageSlideRoute(page: LoginScreen())),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.blue[800],
                      textColor: Colors.white,
                      child: Center(
                          child: Text('Log In with Email',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(23),
                child: GestureDetector(
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .push(PageSlideRoute(page: SignUpScreen())),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: "New to BenchStep? ",
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.normal,
                                fontSize: 15)),
                        TextSpan(
                            text: "Create Account",
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 16))
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
