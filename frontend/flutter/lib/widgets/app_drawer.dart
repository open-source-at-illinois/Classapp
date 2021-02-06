import 'package:flutter/material.dart';

import '../screens/announcements_screen.dart';
import '../screens/applications_screen.dart';
import '../screens/assignments_screen.dart';
import '../screens/auth_screen.dart';
import '../screens/courses_screen.dart';
import '../screens/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('assets/logo.png'),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              margin: EdgeInsets.all(0),
            ),
            DrawerDivider(),
            DrawerListTile(
              icon: Icons.book,
              title: 'Assignments',
              screen: AssignmentsScreen.routeName,
            ),
            DrawerDivider(),
            DrawerListTile(
              icon: Icons.announcement,
              title: 'Announcements',
              screen: AnnouncementsScreen.routeName,
            ),
            DrawerDivider(),
            DrawerListTile(
              icon: Icons.school,
              title: 'Courses',
              screen: CoursesScreen.routeName,
            ),
            DrawerDivider(),
            DrawerListTile(
              icon: Icons.apps,
              title: 'Applications',
              screen: ApplicationsScreen.routeName,
            ),
            DrawerDivider(),
            Spacer(),
            DrawerDivider(),
            DrawerListTile(
              icon: Icons.settings,
              title: 'Settings',
              screen: SettingsScreen.routeName,
            ),
            DrawerDivider(),
            DrawerListTile(
              icon: Icons.exit_to_app,
              title: 'Logout',
              screen: AuthScreen.routeName,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerDivider extends StatelessWidget {
  const DrawerDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: Colors.white,
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final String screen;
  final IconData icon;
  const DrawerListTile({
    Key key,
    this.title,
    this.screen,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(screen);
      },
    );
  }
}
