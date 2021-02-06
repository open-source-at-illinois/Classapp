import 'package:meta/meta.dart' show required;
import 'course.dart';

class Announcement {
  final String title;
  final String body;
  final DateTime postDate;
  final Course course;

  Announcement({
    @required this.title,
    @required this.body,
    @required this.postDate,
    @required this.course,
  });
}
