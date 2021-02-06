import 'package:class_app/widgets/course_icon.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../models/assignment.dart';
import '../screens/assignment_detail_screen.dart';

class AssignmentCard extends StatelessWidget {
  final Assignment assignment;

  AssignmentCard(this.assignment);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AssignmentDetailScreen.routeName, arguments: assignment);
      },
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Hero(
              tag: assignment.title + 'course',
              child: CourseIcon(course: assignment.course),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: assignment.title + 'title',
                  child: Text(
                    assignment.title,
                    style: Theme.of(context).textTheme.bodyText1,
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Hero(
                  tag: assignment.title + 'duedate',
                  child: Row(
                    children: [
                      Text(
                        'Due: ',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        Jiffy(assignment.dueDate).yMMMEdjm,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                Hero(
                  tag: assignment.title + 'timeleft',
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Time left: ',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        printDuration(
                          assignment.dueDate.difference(DateTime.now()),
                          abbreviated: true,
                          tersity: DurationTersity.minute,
                        ),
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
