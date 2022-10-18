import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/ui/views/news_details_view/news_details_view.dart';

import '../../models/News.dart';
import 'cardActionButtons.dart';

class NewsCardSmall extends StatelessWidget {
  const NewsCardSmall(this.news);

  @required
  final News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CantonMethods.viewTransition(context, NewsDetailsView());
      },
      child: Card(
        shape: const SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius.vertical(
                // top: SmoothRadius(
                //   cornerRadius: defaultBorderRadius,
                //   cornerSmoothing: 1,
                // ),
                ),
            side: BorderSide.none),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: margin12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: cardTitleTextSize),
                  ),
                  bottomCardRow(
                      context: context,
                      news: news,
                      time: news.dateTime!,
                      views: news.nViews!),
                  const Padding(
                    padding: EdgeInsets.only(top: marginHalf),
                    child: Divider(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
