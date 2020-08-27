import 'package:BenchStep_Proto/blocs/courses_bloc.dart';
import 'package:BenchStep_Proto/route_transitions/pageSlideRoute.dart';
import 'package:BenchStep_Proto/screens/secondary/details_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExploreCatalog extends StatelessWidget {
  const ExploreCatalog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CoursesBloc coursesBloc = Provider.of<CoursesBloc>(context);

    return Container(
      constraints:
          BoxConstraints(maxHeight: double.infinity, maxWidth: double.infinity),
      color: Color(0xFFf1f2f2),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, outerIndex) => Container(
          constraints: BoxConstraints(
            maxHeight: 260,
            maxWidth: double.infinity,
          ),
          child: ListView.builder(
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, innerIndex) => GestureDetector(
              onTap: () {
                if (innerIndex != 0)
                  Navigator.of(context, rootNavigator: true).push(
                      PageSlideRoute(
                          page: DetailsScreen(
                              title: coursesBloc.coursesInfo[outerIndex]
                                  ['items'][innerIndex - 1]['name']),
                          dx: 0,
                          dy: 1));
              },
              child: Container(
                width: 170,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      offset: Offset(3, 3),
                      blurRadius: 10)
                ]),
                child: innerIndex == 0
                    ? Container(
                        color: categoryColor(
                            coursesBloc.coursesInfo[outerIndex]['name'],
                            coursesBloc),
                        padding: EdgeInsets.all(8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              coursesBloc.coursesInfo[outerIndex]['name'],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      )
                    : Container(
                        child: Column(
                          children: [
                            Image.asset(
                              coursesBloc.coursesInfo[outerIndex]['items']
                                  [innerIndex - 1]['image'],
                              height: 130,
                              width: 170,
                              fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      coursesBloc.coursesInfo[outerIndex]
                                          ['items'][innerIndex - 1]['name'],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  if (coursesBloc.coursesInfo[outerIndex]
                                              ['items'][innerIndex - 1]
                                          ['institute'] !=
                                      null)
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        coursesBloc.coursesInfo[outerIndex]
                                                ['items'][innerIndex - 1]
                                            ['institute'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black45),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
            itemCount: coursesBloc.coursesInfo[outerIndex]['items'].length + 1,
          ),
        ),
        itemCount: coursesBloc.coursesInfo.length,
      ),
    );
  }

  Color categoryColor(category, blocData) {
    Color color;
    blocData.coursesInfo.forEach((element) {
      if (element['name'] == category) color = element['color'];
    });
    return color;
  }
}
