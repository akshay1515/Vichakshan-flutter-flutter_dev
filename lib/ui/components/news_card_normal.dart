import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/ui/views/news_details_view/news_details_view.dart';
import '../../config/constants.dart';
import '../../models/News.dart';
import 'cardActionButtons.dart';

class NewsCardNormal extends StatelessWidget {
  const NewsCardNormal(this.news);

  @required
  final News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CantonMethods.viewTransition(context, NewsDetailsView());
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => NewsDetailsView()));
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
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: margin),
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
                      )),
                  Flexible(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(right: margin),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Gull_portrait_ca_usa.jpg/450px-Gull_portrait_ca_usa.jpg",
                          fit: BoxFit.fill,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: margin12, vertical: marginHalf),
                child: Divider(),
              )
            ],
          )),
    );
  }
}
