import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/models/News.dart';
import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/ui/components/customAppBar.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_large.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_normal.dart';

News news = News();

class MyBookmarkView extends StatelessWidget {
  const MyBookmarkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customCommonAppBar(
            context: context,
            title: "My Bookmarks",
            isNotificationRequired: true),
        body: Stack(
          children: [
            ListView.builder(
                padding:
                    const EdgeInsets.only(bottom: marginHalf, top: marginHalf),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return index == 0
                      ? NewsCardLarge(news)
                      : NewsCardNormal(news);
                }),
          ],
        ));
  }
}
