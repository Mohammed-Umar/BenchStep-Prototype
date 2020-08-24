import 'package:flutter/material.dart';

class CoursesBloc extends ChangeNotifier {
  List<Map<String, dynamic>> _coursesData = [
    {
      'name': 'RETAIL MANAGEMENT',
      'color': Color(0xFF0c855a),
      'items': [
        {
          'name': 'Preparing For Retail Management',
          'image': 'assets/images/retail1.jpg',
          'institute': 'Australian Retail College'
        },
        {
          'name': 'Working Effectively in Business',
          'image': 'assets/images/retail2.png',
          'institute': 'Australian Retail College'
        },
        {
          'name': 'Merchandise Food and Fast Food Products',
          'image': 'assets/images/retail3.png',
          'institute': 'Australian Retail College'
        },
        {
          'name': 'Food Saftey',
          'image': 'assets/images/retail4.png',
          'institute': 'Australian Retail College'
        },
        {
          'name': 'Building-Sales',
          'image': 'assets/images/retail5.png',
          'institute': 'Australian Retail College'
        }
      ],
    },
    {
      'name': 'HUMAN RESOURCES',
      'color': Color(0xFFc34879),
      'items': [
        {
          'name': 'Life Coaching Essentials',
          'image': 'assets/images/hr1.png',
          'institute': 'Read Academy'
        },
        {
          'name': 'Train the Trainer',
          'image': 'assets/images/hr2.png',
          'institute': 'Read Academy'
        },
        {
          'name': 'Employee Motivation',
          'image': 'assets/images/hr3.png',
          'institute': 'Read Academy'
        },
        {
          'name': 'Workplace Harassment',
          'image': 'assets/images/hr4.png',
          'institute': 'Read Academy'
        },
        {
          'name': 'Conducting Annual Employee Review',
          'image': 'assets/images/hr5.png',
          'institute': 'Read Academy'
        },
        {
          'name': 'Team Building through Chemistry',
          'image': 'assets/images/hr6.png',
          'institute': 'Read Academy'
        },
        {
          'name': 'Coaching Salespeople',
          'image': 'assets/images/hr7.jpg',
          'institute': 'Read Academy'
        }
      ],
    },
    {
      'name': 'CORPORATE TRAINING',
      'color': Colors.purple[900],
      'items': [
        {
          'name': 'Essentials of Sales Training',
          'image': 'assets/images/corporate1.jpg'
        },
        {
          'name': 'Fighting Fire with an Extinguisher',
          'image': 'assets/images/corporate2.jpg'
        },
        {'name': 'Induction Motor', 'image': 'assets/images/corporate3.jpg'},
        {'name': 'Workplace Bullying', 'image': 'assets/images/corporate4.png'}
      ]
    }
  ];

  get coursesInfo => _coursesData;

  Map<String, dynamic> categoryData(String categoryName) {
    final filteredCategory = _coursesData
        .where((element) => element['name'] == categoryName)
        .toList();
    return filteredCategory[0];
  }

  List categoryNames() {
    final categoryNamesList = [];
    _coursesData.forEach((element) {
      categoryNamesList.add(element['name']);
    });
    return categoryNamesList.reversed.toList();
  }

  Map<String, dynamic> getCourseInfo(String courseName) {
    Map<String, dynamic> courseData;
    // final filteredCourse = _coursesData
    //     .where((element) => element['items']
    //         .where((innerElement) => innerElement['name'] == courseName))
    //     .toList();
    _coursesData.forEach((element) {
      element['items'].forEach((innerElement) =>
          {if (innerElement['name'] == courseName) courseData = innerElement});
    });
    return courseData;
  }
}
