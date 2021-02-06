import 'package:meta/meta.dart' show required;
import 'package:flutter/material.dart' show Color;

class Course {
  final String name;
  final String number;
  final Color color;

  Course({
    @required this.name,
    @required this.number,
    @required this.color,
  });
}
