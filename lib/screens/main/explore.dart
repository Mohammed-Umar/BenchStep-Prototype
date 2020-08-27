import 'package:BenchStep_Proto/screens/main/components/exploreCatalog.dart';
import 'package:BenchStep_Proto/screens/main/components/exploreFeatured.dart';
import 'package:BenchStep_Proto/screens/main/components/searchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedTab = 0;
  Map<int, Widget> tabs = {0: Text('Catalog'), 1: Text('Featured')};

  List<Widget> bodies = [ExploreCatalog(), ExploreFeatured()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF464b57),
        title: SearchBar(
          selectedTab: _selectedTab,
        ),
        bottom: PreferredSize(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 75,
                    color: Color(0xFFf8f8f8),
                    child: CupertinoSegmentedControl(
                        borderColor: Colors.blue[700],
                        selectedColor: Colors.blue[700],
                        unselectedColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        children: tabs,
                        groupValue: this._selectedTab,
                        onValueChanged: (value) {
                          this.setState(() => this._selectedTab = value);
                        }),
                  ),
                )
              ],
            ),
            preferredSize: Size(double.infinity, 75)),
        elevation: 1,
      ),
      body: bodies[_selectedTab],
    );
  }
}
