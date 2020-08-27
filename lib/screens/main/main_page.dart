import 'package:BenchStep_Proto/models/bottomNav.dart';
import 'package:BenchStep_Proto/screens/main/components/bottomNavBar.dart';
import 'package:BenchStep_Proto/screens/main/downloads.dart';
import 'package:BenchStep_Proto/screens/main/explore.dart';
import 'package:BenchStep_Proto/screens/main/learn.dart';
import 'package:BenchStep_Proto/screens/main/profile.dart';
import 'package:BenchStep_Proto/screens/main/recommended.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  BottomNav currentScreen;

  final List<BottomNav> navBarItems = [
    BottomNav(
        iconData: Icons.explore,
        title: "Explore",
        initialScreen: ExploreScreen(),
        navigatorKey: GlobalKey<NavigatorState>()),
    BottomNav(
        iconData: Icons.star,
        title: "Recommended",
        initialScreen: RecommendedScreen(),
        navigatorKey: GlobalKey<NavigatorState>()),
    BottomNav(
        iconData: Icons.import_contacts,
        title: "Learn",
        initialScreen: LearnScreen(),
        navigatorKey: GlobalKey<NavigatorState>()),
    BottomNav(
        iconData: Icons.cloud_download,
        title: "Downloads",
        initialScreen: DownloadsScreen(),
        navigatorKey: GlobalKey<NavigatorState>()),
    BottomNav(
        iconData: Icons.account_circle,
        title: "Profile",
        initialScreen: ProfileScreen(),
        navigatorKey: GlobalKey<NavigatorState>()),
  ];

  @override
  Widget build(BuildContext context) {
    currentScreen = navBarItems[_selectedIndex];
    return WillPopScope(
      onWillPop: () async =>
          await currentScreen.navigatorKey.currentState.maybePop(),
      child: Scaffold(
          body: Navigator(
            key: currentScreen.navigatorKey,
            onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => currentScreen.initialScreen),
          ),
          bottomNavigationBar: BottomNavBar(
              selectedIndex: _selectedIndex,
              navBarItems: navBarItems,
              onBottomNavChange: onBottomNavChange)),
    );
  }

  void onBottomNavChange(int newIndex) {
    setState(() {
      if (_selectedIndex != newIndex) {
        _selectedIndex = newIndex;
      } else {
        this
            .currentScreen
            .navigatorKey
            .currentState
            .popUntil((route) => route.isFirst);
      }
    });
  }
}
