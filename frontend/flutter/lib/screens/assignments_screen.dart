import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/assignment.dart';
import '../models/course.dart';
import '../services/assignments_provider.dart';
import '../widgets/app_drawer.dart';
import '../widgets/assignment_card.dart';

class AssignmentsScreen extends StatelessWidget {
  static const routeName = 'display';

  final List<Assignment> assignments = [
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

  @override
  Widget build(BuildContext context) {
    final AssignmentsProvider assignmentsProvider = Provider.of<AssignmentsProvider>(context);
    final assignments = assignmentsProvider.assignments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
        actions: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {},
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: assignmentsProvider.refresh,
        child: ListView.builder(
          itemCount: assignments.length,
          itemBuilder: (ctx, i) => AssignmentCard(assignments[i]),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
