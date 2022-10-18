import 'package:canton_design_system/canton_design_system.dart';

class Global {
  static final List<String> lang = [
    "English",
    "मराठी",
  ];

  static height(context) => MediaQuery.of(context).size.height;
  static width(context) => MediaQuery.of(context).size.width;
}
