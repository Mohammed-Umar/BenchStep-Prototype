import 'package:BenchStep_Proto/blocs/courses_bloc.dart';
import 'package:BenchStep_Proto/screens/login.dart';
import 'package:BenchStep_Proto/screens/main/downloads.dart';
import 'package:BenchStep_Proto/screens/main/explore.dart';
import 'package:BenchStep_Proto/screens/main/learn.dart';
import 'package:BenchStep_Proto/screens/main/profile.dart';
import 'package:BenchStep_Proto/screens/main/recommended.dart';
import 'package:BenchStep_Proto/screens/signup.dart';
import 'package:BenchStep_Proto/screens/start_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/main/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'BenchStep';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CoursesBloc>.value(value: CoursesBloc())
      ],
      child: MaterialApp(
        title: _title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        // home: MyHomePage(title: _title),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => StartScreen(),
          '/Login': (context) => LoginScreen(),
          '/SignUp': (context) => SignUpScreen(),
          '/MainPage': (context) => MainScreen(),
          '/Explore': (context) => ExploreScreen(),
          '/Recommended': (context) => RecommendedScreen(),
          '/Learn': (context) => LearnScreen(),
          '/Downloads': (context) => DownloadsScreen(),
          '/Profile': (context) => ProfileScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
