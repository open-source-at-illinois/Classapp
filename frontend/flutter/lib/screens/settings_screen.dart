import 'package:class_app/services/settings_provider.dart';
import 'package:class_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = 'settings';
  @override
  Widget build(BuildContext context) {
    final SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: AppDrawer(),
      body: ListTile(
          leading: Icon(Icons.adb),
          title: Text('Demo Setting'),
          trailing: Switch(
            value: settingsProvider.getDemoSetting(),
            onChanged: (value) {
              settingsProvider.setDemoSetting(value: value);
            },
          )),
    );
  }
}
