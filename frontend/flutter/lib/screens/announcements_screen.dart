import 'package:class_app/strings.dart';
import 'package:flutter/material.dart';

import '../models/announcement.dart';
import '../models/course.dart';
import '../widgets/announcement_card.dart';
import '../widgets/app_drawer.dart';

class AnnouncementsScreen extends StatelessWidget {
  static const routeName = 'announcements';

  List<Announcement> announcements = [
    Announcement(
      title: 'Announcement 1',
      body: Strings.lorem,
      postDate: DateTime.now(),
      course: Course(
        name: 'MATH',
        number: '241',
        color: Colors.deepOrange,
      ),
    ),
    Announcement(
      title: 'Announcement 2',
      body: Strings.lorem,
      postDate: DateTime.now(),
      course: Course(
        name: 'TAM',
        number: '210',
        color: Colors.deepOrange,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Announcements'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, i) => AnnouncementCard(
          announcement: announcements[i],
        ),
        itemCount: announcements.length,
      ),
    );
  }
}
