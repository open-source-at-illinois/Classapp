import 'package:class_app/models/course.dart';
import 'package:flutter/material.dart';

class CourseIcon extends StatelessWidget {
  final Course course;

  CourseIcon({this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(2),
          bottomLeft: Radius.circular(2),
        ),
        border: Border.all(color: course.color),
        color: course.color,
      ),
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            course.name,
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            course.number,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
