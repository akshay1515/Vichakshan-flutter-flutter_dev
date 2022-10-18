import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/models/Categories.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_large.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_normal.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_small.dart';

import '../../../config/news_exceptions.dart';
import '../../../models/News.dart';
import '../../../providers/news_providers.dart';
import '../../components/error_body.dart';
import '../../components/news_list.dart';
import '../../components/unexpected_error.dart';

Categories categories = Categories();

class NewsView extends StatefulWidget {
  NewsView({Key? key, required Categories cat}) : super(key: key) {
    categories = cat;
  }

  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return CantonScaffold(
      backgroundColor: CantonMethods.alternateCanvasColor(context),
      padding: EdgeInsets.zero,
      body: __content(context),
    );
  }

  Widget __content(BuildContext context) {
    dynamic categoryProvider = getNewsCategoryIdProvider(parameters: {
      "apiVersion": "1.0",
      "token":
          "c4Q7FPh1SsiAMlVDryKMIv:APA91bF54BeFs8WuODtOJUXyXhwlhOdN3NkUQODtUr504oENlpMTxJFUdXwwmMLX7VcJ12nGFrRhOyCpv6JzUdMkx42wfZAawl0Qn7NMS8oYrJ4O9BN1PGQFlNiu8H7_ThtGzlpHeSP3",
      "imei": "8762861d-a170-439b-bbe1-ccc96ce2aa87",
      "macId": "1.0",
      "userId": "5866",
      "categoryId": categories.id.toString(),
      "notificationReadDate": "10",
      "offset": "0",
      "newsType": "0"
    });

    debugPrint('parshu category' + categories.id);
    return Scaffold(
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            AsyncValue<List<News>> categoryNews = ref.watch(categoryProvider);
            return categoryNews.when(
              error: (e, s) {
                if (e is NewsExceptions) {
                  debugPrint("Parshu error " + e.message.toString());
                  return ErrorBody(e.message, categoryProvider);
                }
                debugPrint("Parshu error");
                return UnexpectedError(categoryProvider);
              },
              loading: () {
                return Text("Parshu loading");
              },
              data: (articles) {
                debugPrint("Parshu is in data");
                return CustomScrollView(
                  slivers: <Widget>[
                    NewsList(articles),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  // Widget _content(BuildContext context) {
  //   return Column(
  //     children: [
  //       Container(
  //         color: MyColors.primaryColor,
  //         height: 56,
  //         width: double.infinity,
  //         child: const Padding(
  //           padding:
  //               EdgeInsets.symmetric(horizontal: margin, vertical: marginHalf),
  //           child: TextField(
  //               decoration: InputDecoration(
  //                 border: InputBorder.none,
  //                 hintText: 'Search for news',
  //                 fillColor: Colors.white,
  //                 suffixIcon: Icon(Icons.search, color: Colors.grey),
  //                 contentPadding:
  //                     EdgeInsets.only(left: marginHalf, right: marginHalf),
  //                 suffixIconColor: Colors.grey,
  //               ),
  //               keyboardType: TextInputType.text,
  //               minLines: 1,
  //               maxLines: 1,
  //               style: TextStyle(
  //                 fontSize: 16,
  //               )),
  //         ),
  //       ),
  //       Expanded(child: ListView.builder(itemBuilder: (context, index) {
  //         return Column(
  //           children: [NewsCardNormal(news), const SizedBox(height: 8)],
  //         );
  //       })),
  //     ],
  //   );
  // }

}


  // Widget _content(BuildContext context) {
  //   return Column(
  //     children: [
  //       Container(
  //         color: MyColors.primaryColor,
  //         height: 56,
  //         width: double.infinity,
  //         child: const Padding(
  //           padding: EdgeInsets.symmetric(horizontal: margin, vertical: marginHalf),
  //           child: TextField(
  //             decoration: InputDecoration(
  //               border: InputBorder.none,
  //               hintText: 'Search for news',
  //               fillColor: Colors.white,
  //               suffixIcon: Icon(Icons.search, color: Colors.grey),
  //               contentPadding: EdgeInsets.only(left: marginHalf,right: marginHalf),
  //               suffixIconColor: Colors.grey,
  //             ),
  //             keyboardType: TextInputType.text,
  //             minLines: 1,
  //             maxLines: 1,
  //             style: TextStyle(
  //               fontSize: 16,
  //             )
  //           ),
  //         ),
  //       ),
  //       Expanded(child: ListView.builder(itemBuilder: (context, index) {
  //         return Column(
  //           children: [
  //             NewsCardLarge(news), const SizedBox(height: 8)],
  //         );
  //       })),
  //     ],
  //   );
  // }

