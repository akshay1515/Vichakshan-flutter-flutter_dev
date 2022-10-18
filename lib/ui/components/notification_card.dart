import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/constants.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // CantonMethods.viewTransition(context, NewsView(news));
      },
      child: Card(
        shape: const SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius.vertical(
              top: SmoothRadius(
                cornerRadius: defaultBorderRadius,
                cornerSmoothing: 1,
              ),
            ),
            side: BorderSide.none),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: margin12, right: margin12, bottom: marginHalfHalf),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Punes public transaportation buses are started like nothing happen as COVID-19. People are back to work.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: cardTitleTextSize),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "12 Sept 2022",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
