import 'package:shared_preferences/shared_preferences.dart';

class VPref {
  VPref();
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  int getUserId() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getInt('userId') ?? 0;
    }) as int;
  }

  Future<void> setUserId({required int userId}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setInt('userId', userId).then((bool success) {
      return userId;
    });
  }

  String getImei() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getString('imei') ?? "";
    }) as String;
  }

  Future<void> setImei({required String imei}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setString('imei', imei).then((bool success) {
      return imei;
    });
  }

  bool getWelcomeMessage() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getBool('welcomeMsg') ?? false;
    }) as bool;
  }

  Future<void> setWelcomeMessage({required bool isMsgSet}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setBool('welcomeMsg', isMsgSet).then((bool success) {
      return isMsgSet;
    });
  }

  bool getSkip() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getBool('skip') ?? false;
    }) as bool;
  }

  Future<void> setSkip({required bool isSkip}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setBool('userId', isSkip).then((bool success) {
      return isSkip;
    });
  }

  String getShareAppLink() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getString('shareAppLink') ?? "";
    }) as String;
  }

  Future<void> setShareAppLink({required String appLink}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setString('shareAppLink', appLink).then((bool success) {
      return appLink;
    });
  }

  String getEmail() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getString('email') ?? "";
    }) as String;
  }

  Future<void> setEmail({required String email}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setString('email', email).then((bool success) {
      return email;
    });
  }

  String getPhone() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getString('phone') ?? "";
    }) as String;
  }

  Future<void> setPhone({required String phone}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setString('phone', phone).then((bool success) {
      return phone;
    });
  }

  String getNotificationReadDateTime() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getString('notificationTime') ?? "";
    }) as String;
  }

  Future<void> setNotificationReadDateTime({required String time}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setString('notificationTime', time).then((bool success) {
      return time;
    });
  }

  Future<String> getName() {
    final name = prefs.then((SharedPreferences prefs) {
      return prefs.getString('name') ?? "";
    });
    return name;
  }

  Future<void> setName({required String name}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setString('name', name).then((bool success) {
      return name;
    });
  }

  bool getFollowSelected() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getBool('followSelected') ?? false;
    }) as bool;
  }

  Future<void> setFollowSelected({required bool isSelected}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setBool('followSelected', isSelected).then((bool success) {
      return isSelected;
    });
  }

  bool getLogin() {
    return prefs.then((SharedPreferences prefs) {
      return prefs.getBool('login') ?? false;
    }) as bool;
  }

  Future<void> setLogin({required bool isLogin}) async {
    final SharedPreferences myPref = await prefs;
    myPref.setBool('login', isLogin).then((bool success) {
      return isLogin;
    });
  }
}
