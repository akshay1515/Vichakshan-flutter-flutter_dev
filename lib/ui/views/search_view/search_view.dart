import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/global/global.dart';
import 'package:vichakshan_news_flutter/models/News.dart';
import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/ui/components/customAppBar.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_large.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_normal.dart';

News news = News();

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(context),
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

AppBar customAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 48,
    backgroundColor: MyColors.primaryColor,
    title: SizedBox(
      height: 38,
      width: Global.width(context) - 80,
      child: const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey)),
            hintText: 'Search for news',
            fillColor: Colors.white,
            suffixIcon: Icon(Icons.search, color: Colors.grey),
            contentPadding:
                EdgeInsets.only(left: marginHalf, right: marginHalf),
            suffixIconColor: Colors.grey,
          ),
          keyboardType: TextInputType.text,
          minLines: 1,
          maxLines: 1,
          style: TextStyle(
            fontSize: 16,
          )),
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
  );
}
