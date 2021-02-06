import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:flutter/material.dart';

import '../models/assignment.dart';
import '../models/course.dart';

class AssignmentsProvider with ChangeNotifier {
  bool _isLoading = false;
  List<Assignment> _assignments = <Assignment>[
    Assignment(
      course: Course(
        name: 'MATH',
        number: '241',
        color: Colors.deepOrange,
      ),
      title: 'Vectors Assignment',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consequat lacus fringilla, cursus ex ut, volutpat lorem. Pellentesque condimentum, elit vel luctus blandit, neque ante malesuada velit, quis gravida felis justo sit amet nisl. Sed mattis turpis mi, id consectetur elit malesuada eget. In ac fringilla turpis. Duis et augue odio. Maecenas vel rutrum eros, sit amet porta purus. Sed eget sollicitudin tortor, vel viverra neque. Aenean aliquet eget risus vel ultrices.',
      dueDate: DateTime.now(),
    ),
    Assignment(
      course: Course(
        name: 'TAM',
        number: '210',
        color: Colors.purple,
      ),
      title: 'Forces Homework',
      details: 'Hello',
      dueDate: DateTime.now().add(Duration(hours: 27)),
    ),
  ];

  List<Assignment> get assignments {
    return [..._assignments];
  }

  AssignmentsProvider() {
    //refresh();
  }

  Future<void> refresh() async {
    await clearCachedData();
    loadAssignments();
  }

  Future<void> loadAssignments() async {
    if (_isLoading) {
      return Future.value();
    }
    _isLoading = true;
    return _getAssignments().then((_) {
      _isLoading = false;
      notifyListeners();
    });
  }

  Future<void> _getAssignments() async {
    await Future.delayed(Duration(seconds: 2));
  }

  Future<void> clearCachedData() async {
    _assignments = <Assignment>[];
    notifyListeners();
  }
}
