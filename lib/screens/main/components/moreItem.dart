import 'package:BenchStep_Proto/route_transitions/pageSlideRoute.dart';
import 'package:flutter/material.dart';

class MoreItem extends StatelessWidget {
  const MoreItem(
      {@required this.title,
      @required this.leading,
      @required this.nextScreen});

  final Widget leading;
  final String title;
  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 10),
            color: Colors.black.withOpacity(.1))
      ]),
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            onTap: () => Navigator.of(context, rootNavigator: true)
                .push(PageSlideRoute(page: nextScreen, dx: 0, dy: 1)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: leading,
            title: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
            // trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ),
        Divider(
          color: Colors.black.withOpacity(.6),
          indent: 15,
          endIndent: 15,
          height: 0,
        )
      ]),
    );
  }
}
