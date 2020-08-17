import 'package:BenchStep_Proto/models/bottomNav.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar(
      {@required this.selectedIndex,
      @required this.navBarItems,
      @required this.onBottomNavChange});

  final int selectedIndex;
  final Function(int) onBottomNavChange;
  final List<BottomNav> navBarItems;

  @override
  Widget build(BuildContext context) {
    return new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.white))),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          items: this
              .navBarItems
              .map((flow) => BottomNavigationBarItem(
                  icon: Icon(flow.iconData), title: Text(flow.title)))
              .toList(),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[600],
          onTap: (int index) {
            this.onBottomNavChange(index);
          },
        ));
  }
}
