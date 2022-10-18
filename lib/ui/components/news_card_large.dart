import 'package:canton_design_system/canton_design_system.dart';

import '../../config/constants.dart';
import '../../models/News.dart';
import '../views/news_details_view/news_details_view.dart';
import 'cardActionButtons.dart';

class NewsCardLarge extends StatelessWidget {
  const NewsCardLarge(this.news);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: margin12, vertical: marginHalfHalf),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Gull_portrait_ca_usa.jpg/450px-Gull_portrait_ca_usa.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),
            ),
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
                  Text(news.categoryName!,
                      textScaleFactor: 0.92,
                      style: TextStyle(color: Colors.red)),
                  bottomNormalCardRow(
                      context: context,
                      news: news,
                      time: news.dateTime!,
                      views: news.nViews!),
                ],
              ),
            ),

            // const Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: margin12, vertical: marginHalf),
            //   child: Divider(),
            // )
          ],
        ),
      ),
    );
  }
}
