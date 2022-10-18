import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/ui/views/comment_view/comment_view.dart';

import '../../config/constants.dart';
import '../../models/News.dart';

Widget cardActionButtons({required BuildContext context, required News news}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: rightCardIconPadding),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CommentView(
                            news: news,
                          )));
            },
            child: Image.asset(
              imagePath + "comment_ic.png",
              height: cardActionIconSize,
              width: cardActionIconSize,
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(right: rightCardIconPadding),
        child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              imagePath + "bookmark.png",
              height: cardActionIconSize,
              width: cardActionIconSize,
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(right: rightCardIconPadding),
        child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              imagePath + "share_ic_item.png",
              height: cardActionIconSize,
              width: cardActionIconSize,
            )),
      )
    ],
  );
}

Widget bottomCardRow(
    {required BuildContext context,
    required News news,
    required String time,
    required String views}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        time,
        maxLines: 1,
        textScaleFactor: 0.9,
        style: TextStyle(color: Colors.grey),
      ),
      Padding(
        padding: const EdgeInsets.only(left: rightPadding),
        child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.remove_red_eye,
              size: cardActionIconSize,
              color: Colors.grey,
            )),
      ),
      Text(
        views,
        maxLines: 1,
        textScaleFactor: 0.9,
        style: TextStyle(color: Colors.grey),
      ),
      const Spacer(),
      cardActionButtons(context: context, news: news)
    ],
  );
}

Widget bottomNormalCardRow(
    {required BuildContext context,
    required News news,
    required String time,
    required String views}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        time,
        maxLines: 1,
        textScaleFactor: 0.9,
        style: TextStyle(color: Colors.grey),
      ),
      Padding(
        padding: const EdgeInsets.only(left: rightPadding),
        child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.remove_red_eye,
              size: cardActionIconSize,
              color: Colors.grey,
            )),
      ),
      Text(
        views,
        maxLines: 1,
        textScaleFactor: 0.9,
        style: TextStyle(color: Colors.grey),
      ),
      const Spacer(),
      cardActionButtons(context: context, news: news),
    ],
  );
}
