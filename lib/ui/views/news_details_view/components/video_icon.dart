import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/config/constants.dart';

Widget getVideoIcon({required bool isLarge, required bool isVideo}) {
  double iconSize = isLarge ? 60 : 48;
  double playIconSize = iconSize == 48 ? 32 : 48;
  return isVideo
      ? Stack(
          children: [
            Container(
              width: iconSize,
              height: iconSize,
              child: Icon(
                Icons.play_arrow_rounded,
                size: playIconSize,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.primaryColor,
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: marginHalfHalf,
                ),
              ),
            )
          ],
        )
      : Container();
}
