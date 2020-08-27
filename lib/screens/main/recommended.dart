import 'package:BenchStep_Proto/blocs/courses_bloc.dart';
import 'package:BenchStep_Proto/screens/main/components/moreItem.dart';
import 'package:BenchStep_Proto/screens/secondary/details_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecommendedScreen extends StatefulWidget {
  RecommendedScreen({Key key}) : super(key: key);

  @override
  _RecommendedScreenState createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
  String _selectedTab = '';

  tabColor(String tab) =>
      _selectedTab == tab ? Colors.blue[700] : Colors.grey[400];

  @override
  Widget build(BuildContext context) {
    CoursesBloc coursesBloc = Provider.of<CoursesBloc>(context);

    if (_selectedTab == '') _selectedTab = coursesBloc.categoryNames()[0];
    return Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      appBar: AppBar(
          title: Text('Recommended'),
          centerTitle: true,
          backgroundColor: Color(0xFF464b57)),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: double.infinity, maxWidth: double.infinity),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  'Learn for fun',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 35,
                  maxWidth: double.infinity,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () => setState(() =>
                            _selectedTab = coursesBloc.categoryNames()[index]),
                        child: Text(
                          coursesBloc.categoryNames()[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  tabColor(coursesBloc.categoryNames()[index])),
                        ),
                      ),
                    ),
                  ),
                  itemCount: coursesBloc.categoryNames().length,
                ),
              ),
              Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => MoreItem(
                        title: coursesBloc.categoryData(_selectedTab)['items']
                            [index]['name'],
                        leading: Image.asset(
                            coursesBloc.categoryData(_selectedTab)['items']
                                [index]['image']),
                        nextScreen: DetailsScreen(
                          title: coursesBloc.categoryData(_selectedTab)['items']
                              [index]['name'],
                        )),
                    itemCount:
                        coursesBloc.categoryData(_selectedTab)['items'].length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
