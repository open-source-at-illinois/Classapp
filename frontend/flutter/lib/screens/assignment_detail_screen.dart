import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../models/assignment.dart';
import '../widgets/course_icon.dart';
import 'course_detail_screen.dart';

class AssignmentDetailScreen extends StatelessWidget {
  static const String routeName = 'assignmentDetail';

  @override
  Widget build(BuildContext context) {
    Assignment assignment = ModalRoute.of(context).settings.arguments as Assignment;
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    CourseDetailScreen.routeName,
                    arguments: assignment.course,
                  );
                },
                child: Hero(
                  tag: assignment.title + 'course',
                  child: CourseIcon(course: assignment.course),
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
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
                  SizedBox(height: 10),
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
          Text(assignment.details),
        ],
      ),
    );
  }
}
