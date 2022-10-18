import 'package:canton_design_system/canton_design_system.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/config/firebase_notifications.dart';
import 'package:vichakshan_news_flutter/ui/views/comment_view/comment_view.dart';
import 'package:vichakshan_news_flutter/ui/views/interest_view/interest_view.dart';
import 'package:vichakshan_news_flutter/ui/views/journalist_view/journalist_view.dart';
import 'package:vichakshan_news_flutter/ui/views/login_view/login_view.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vichakshan_news_flutter/ui/views/main_home_page.dart';
import 'package:vichakshan_news_flutter/ui/views/my_bookmark_view/my_bookmark_view.dart';
import 'package:vichakshan_news_flutter/ui/views/news_details_view/news_details_view.dart';
import 'package:vichakshan_news_flutter/ui/views/notification_details_view/notification_details_view.dart';
import 'package:vichakshan_news_flutter/ui/views/notification_view/notification_view.dart';
import 'package:vichakshan_news_flutter/ui/views/otp_view/otp_view.dart';
import 'package:vichakshan_news_flutter/ui/views/profile_view/profile_view.dart';
import 'package:vichakshan_news_flutter/ui/views/search_view/search_view.dart';
import 'package:vichakshan_news_flutter/ui/views/settings_view/settings_view.dart';
import 'package:vichakshan_news_flutter/ui/views/web_view/web_view.dart';

import 'ui/views/feedback_view/feedback_view.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
  firebaseNotifications();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const ProviderScope(child: MyApp())));

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CantonApp(
      title: appTitle,
      primaryLightColor: MyColors.primaryColor,
      primaryDarkColor: MyColors.primaryColor,
      home: HomeView(),
    );
  }
}
