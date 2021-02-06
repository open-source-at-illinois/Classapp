import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:meta/meta.dart' show required;
import 'package:hive/hive.dart';

class SettingsProvider with ChangeNotifier {
  static const String settingsBoxName = 'settings';

  String demoSetting = 'demoSetting';

  Box _box;

  SettingsProvider() {
    _box = Hive.box(settingsBoxName);
    initializeValues();
  }

  initializeValues() {
    if (!_box.containsKey(demoSetting)) {
      setDemoSetting(value: true);
    }
  }

  void setDemoSetting({@required value}) {
    _box.put(demoSetting, value);
    notifyListeners();
  }

  bool getDemoSetting() => _box.get(demoSetting) as bool;
}
