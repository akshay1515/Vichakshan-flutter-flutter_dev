import 'dart:ffi';

import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/ui/views/notification_view/notification_view.dart';
import 'package:vichakshan_news_flutter/ui/views/search_view/search_view.dart';

import '../../config/constants.dart';

AppBar customCommonAppBar(
    {required BuildContext context,
    required String title,
    required bool isNotificationRequired}) {
  return AppBar(
      toolbarHeight: 48,
      backgroundColor: MyColors.primaryColor,
      title: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      titleSpacing: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_rounded,
          size: 34,
          color: Colors.white,
        ),
      ),
      actions: _showActionIcons(
          context: context, isNotification: isNotificationRequired));
}

List<Widget> _showActionIcons(
    {required BuildContext context, required bool isNotification}) {
  return isNotification
      ? <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: rightPadding),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchView()));
                  },
                  child: Image.asset(
                    imagePath + "search.png",
                    height: 24,
                    width: 24,
                  ))),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationView()));
                  },
                  child: Image.asset(
                    imagePath + "notification.png",
                    height: 24,
                    width: 24,
                  )))
        ]
      : <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: rightPadding),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchView()));
                  },
                  child: Image.asset(
                    imagePath + "search.png",
                    height: 24,
                    width: 24,
                  ))),
        ];
}
