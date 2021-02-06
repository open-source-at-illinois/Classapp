import 'package:flutter/material.dart';

import '../models/application.dart';
import '../widgets/app_drawer.dart';
import '../widgets/application_card.dart';

class ApplicationsScreen extends StatelessWidget {
  static const routeName = 'applications';

  final List<Application> apps = [
    Application(
      name: 'BlackBoard',
      logo: 'assets/blackboardlogo.png',
      connected: true,
    ),
    Application(
      name: 'Learn/Moodle',
      logo: 'assets/learn.png',
      connected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Applications'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (ctx, i) => ApplicationCard(apps[i]),
      ),
    );
  }
}
