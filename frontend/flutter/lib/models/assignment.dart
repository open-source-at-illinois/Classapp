import 'package:meta/meta.dart' show required;
import 'course.dart';

class Assignment {
  final Course course;
  final String details;
  final String title;
  final DateTime dueDate;

  Assignment({
    @required this.title,
    @required this.course,
    @required this.details,
    @required this.dueDate,
  });
}
