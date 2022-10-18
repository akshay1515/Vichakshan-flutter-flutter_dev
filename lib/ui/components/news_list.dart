import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/models/News.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_large.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_normal.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_small.dart';

class NewsList extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const NewsList(this.news);
  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          // debugPrint("parshu data " + news[index].title.toString());
          if (index < 1)
            return Column(
              children: [
                NewsCardLarge(news[index]),
                SizedBox(
                  height: 8,
                )
              ],
            );

          return NewsCardNormal(news[index]);
        },

        /// Sets ChildCount to one incase of error and needs to display on Item in the list
        /// This also allows the use of the [RefreshList] widget, to refresh the feed.
        childCount: news.isNotEmpty ? news.length - 1 : 1,
      ),
    );
  }
}
