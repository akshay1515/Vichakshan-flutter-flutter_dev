import 'dart:ui';

import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:vichakshan_news_flutter/ui/views/feedback_view/feedback_view.dart';
import 'package:vichakshan_news_flutter/ui/views/journalist_view/journalist_view.dart';
import 'package:vichakshan_news_flutter/ui/views/my_bookmark_view/my_bookmark_view.dart';
import 'package:vichakshan_news_flutter/ui/views/notification_view/notification_view.dart';
import 'package:vichakshan_news_flutter/ui/views/profile_view/profile_view.dart';
import 'package:vichakshan_news_flutter/ui/views/web_view/web_view.dart';

import '../../../config/constants.dart';
import '../../components/customAppBar.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customCommonAppBar(
          context: context, title: 'Settings', isNotificationRequired: true),
      body: _content(context),
    );
  }
}

Widget _content(BuildContext context) {
  return Column(
    children: <Widget>[_body(context)],
  );
}

Widget _body(BuildContext context) {
  return Expanded(
      child: Column(
    children: [
      const SizedBox(height: 10),
      _settingsItem(context, "Interest"),
      const SizedBox(height: 10),
      _settingsItem(context, "Profile"),
      const SizedBox(height: 10),
      _settingsItem(context, "My Bookmarks"),
      const SizedBox(height: 10),
      _settingsItem(context, "Journalist"),
      const SizedBox(height: 10),
      _settingsItem(context, "Feedback"),
      const SizedBox(height: 10),
      _settingsItem(context, "About Us"),
      const SizedBox(height: 10),
      _settingsItem(context, "Contact Us"),
      const SizedBox(height: 10),
      _settingsItem(context, "Follow Us"),
      const SizedBox(height: 10),
      _settingsItem(context, "Notifications"),
      const SizedBox(height: 10),
      _settingsItem(context, "Share App"),
      const SizedBox(height: 10),
      _settingsItem(context, "Terms & Conditions"),
      const SizedBox(height: 10),
      _settingsItem(context, "Logout"),
      const SizedBox(height: 10),
    ],
  ));
}

Widget _settingsItem(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      switch (title) {
        case 'Interest':
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SettingsView()));
          break;
        case 'Profile':
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfileView()));
          break;
        case 'My Bookmarks':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyBookmarkView()));
          break;
        case 'Journalist':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => JournalistView()));
          break;
        case 'Feedback':
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FeedbackView()));
          break;
        case 'About Us':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CustomWebView(loadWhat: 'about')));
          break;
        case 'Contact Us':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CustomWebView(loadWhat: 'contact')));

          break;
        case 'Follow Us':
          break;
        case 'Notifications':
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationView()));
          break;
        case 'Share App':
          break;
        case 'Terms & Conditions':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CustomWebView(loadWhat: 'terms')));

          break;
        case 'Logout':
          break;
      }
    },
    child: Padding(
      padding: const EdgeInsets.only(left: margin, right: 24),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}
