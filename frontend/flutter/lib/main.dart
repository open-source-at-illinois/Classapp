import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'screens/announcements_screen.dart';
import 'screens/applications_screen.dart';
import 'screens/assignment_detail_screen.dart';
import 'screens/assignments_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/course_detail_screen.dart';
import 'screens/courses_screen.dart';
import 'screens/settings_screen.dart';
import 'services/assignments_provider.dart';
import 'services/auth_provider.dart';
import 'services/settings_provider.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('courses');
  await Hive.openBox('settings');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => SettingsProvider()),
        ChangeNotifierProvider(create: (_) => AssignmentsProvider()),
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: ThemeData(
          fontFamily: 'Lato',
          primaryColor: Color.fromRGBO(23, 33, 72, 1),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            headline3: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            bodyText1: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
            bodyText2: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        initialRoute: AuthScreen.routeName,
        routes: {
          AnnouncementsScreen.routeName: (_) => AnnouncementsScreen(),
          ApplicationsScreen.routeName: (_) => ApplicationsScreen(),
          AssignmentDetailScreen.routeName: (_) => AssignmentDetailScreen(),
          AssignmentsScreen.routeName: (_) => AssignmentsScreen(),
          AuthScreen.routeName: (_) => AuthScreen(),
          CourseDetailScreen.routeName: (_) => CourseDetailScreen(),
          CoursesScreen.routeName: (_) => CoursesScreen(),
          SettingsScreen.routeName: (_) => SettingsScreen(),
        },
      ),
    );
  }
}
