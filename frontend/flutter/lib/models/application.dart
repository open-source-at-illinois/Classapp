import 'package:meta/meta.dart' show required;

class Application {
  final String name;
  final String logo;
  final bool connected;
  Application({
    @required this.name,
    @required this.logo,
    @required this.connected,
  });
}
