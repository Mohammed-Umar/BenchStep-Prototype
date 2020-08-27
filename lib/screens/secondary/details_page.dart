import 'package:BenchStep_Proto/blocs/courses_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    CoursesBloc coursesBloc = Provider.of<CoursesBloc>(context);

    final courseData = coursesBloc.getCourseInfo(title);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF464b57),
          title: Text(
            title,
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.clear,
              size: 30,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                CupertinoIcons.share,
                size: 30,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  constraints:
                      BoxConstraints(maxHeight: 400, maxWidth: double.infinity),
                  foregroundDecoration:
                      BoxDecoration(color: Color(0xFF1b1209).withOpacity(.9)),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(courseData['image']),
                    fit: BoxFit.fitHeight,
                  )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      courseData['institute'] != null
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(top: 40, bottom: 20),
                              child: Text(
                                courseData['institute'],
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[400]),
                              ),
                            )
                          : SizedBox(
                              height: 60,
                            ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          courseData['name'],
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white.withOpacity(.8),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Text(
                          'This four-unit course developed by the \nAustralian Retail College (ARC) incorporates \nan innovative curriculum designed to prepare you \nfor a Retail Management role.',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.6),
                              fontSize: 13),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            child: FlatButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                                color: Colors.blue[700],
                                textColor: Colors.white,
                                child: Text(
                                  'Subscribe',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "INR 2,949.00/mounth",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white.withOpacity(.6))),
                                  TextSpan(
                                      text: "\nStarts Aug 16",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(.6),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))
                                ])),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text(
                  'About this Specialization',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.8),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'This unit builds on the performance outcomes, skills and knowledge required for effective communication with customers and other staff in the workplace. Good communication is an important skill in any workplace environment. Employees are more engaged and can better align with organisational objectives and goals when a culture of good communication is established in a team or workplace. Furthermore as retail is highly reliant on client and customer interactions, strong communication skills can greatly affect a business’ overall performance.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ));
  }
}
