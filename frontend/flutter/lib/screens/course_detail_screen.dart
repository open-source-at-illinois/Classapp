import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = 'courseDetails';

  @override
  Widget build(BuildContext context) {
    Course course = ModalRoute.of(context).settings.arguments as Course;
    return Scaffold(
      appBar: AppBar(
        title: Text(course.name + ' ' + course.number),
      ),
    );
  }
}
