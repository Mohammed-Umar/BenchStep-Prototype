import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({@required this.selectedTab});

  final int selectedTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFF373d48),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: selectedTab == 0 ? "Search Catalog" : "Search Featured",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 18),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 21,
              )),
        ),
      ),
    );
  }
}
