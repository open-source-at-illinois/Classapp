import 'package:class_app/screens/course_detail_screen.dart';
import 'package:class_app/widgets/app_drawer.dart';
import 'package:class_app/widgets/course_icon.dart';
import 'package:flutter/material.dart';
import '../models/course.dart';

class CoursesScreen extends StatelessWidget {
  static const routeName = 'course';

  List<Course> courses = [
    Course(
      name: 'MATH',
      number: '241',
      color: Colors.red,
    ),
    Course(
      name: 'TAM',
      number: '210',
      color: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      drawer: AppDrawer(),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          ...courses.map(
            (e) => InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(CourseDetailScreen.routeName, arguments: e);
              },
              child: Card(
                elevation: 5,
                child: CourseIcon(course: e),
              ),
            ),
          )
        ],
      ),
    );
  }
}
