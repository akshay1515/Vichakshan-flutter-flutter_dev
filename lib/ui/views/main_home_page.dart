import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vichakshan_news_flutter/ui/views/custome_tab_view/custome_tab_view.dart';
import 'package:vichakshan_news_flutter/ui/views/home_news_view/home_news_view.dart';
import 'package:vichakshan_news_flutter/ui/views/news_view/news_view.dart';
import 'package:vichakshan_news_flutter/ui/views/settings_view/settings_view.dart';

import '../../config/constants.dart';
import '../../config/news_exceptions.dart';
import '../../models/Categories.dart';
import '../../models/News.dart';
import '../../providers/news_providers.dart';
import '../components/error_body.dart';
import '../components/unexpected_error.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

int pageViewIndex = 0;

class _HomeViewState extends State<HomeView> {
  dynamic allCategoryProvider = getAllCategoryProvider(parameters: {
    "apiVersion": "1.0",
    "token":
        "cKVnwtitQ6qGjFpsPdUCO2:APA91bEUzrG3uz4w0y0tVytzeVIliu1XmGh8gVeZJs6FL4pR87g8uRc15dFkTky5Giarmm7o5q4uCdsuZskzgYHgWhN4p9GhoeAIkpivXhGirs33oW5gcDjqwG9C2UAkGTEc_fu99mZB",
    "imei": "075e450f-aa57-4a70-8251-4b176326b63b",
    "macId": "1.0",
    "userId": "7070",
    "newsType": 0
  });

  int initPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(),
      body: SafeArea(child: Consumer(
        builder: (context, ref, child) {
          AsyncValue<CategoriesResponse> categoryNews =
              ref.watch(allCategoryProvider);

          return categoryNews.when(
            data: (data) {
              List<Categories> newList = [];
              List<Categories> ll = data.categories as List<Categories>;
              final Categories ct = Categories(
                  id: "0",
                  category: "होम",
                  isDeleted: "0",
                  isMandatory: "0",
                  isSelected: true,
                  type: "0",
                  webUrl: "google.com",
                  subCategories: []);
              newList.add(ct);
              for (int i = 0; i < ll.length; i++) {
                if (ll[i].isSelected || ll[i].isMandatory == "0") {
                  newList.add(ll[i]);
                }
              }

              return SafeArea(
                  child: CustomTabView(
                itemCount: newList.length,
                tabBuilder: (context, index) {
                  final cat = newList[index];
                  return Tab(text: cat.category);
                },
                pageBuilder: (context, index) {
                  return index == 0
                      ? HomeNewsView(
                          cat: newList[index],
                        )
                      : NewsView(
                          cat: newList[index],
                        );
                },
                onPositionChange: (index) {
                  initPosition = index;
                },
                onScroll: (position) {
                  if (newList.length == position) {
                    print("Last end");
                  }
                },
              ));
            },
            error: (e, s) {
              if (e is NewsExceptions) {
                return ErrorBody(e.message, allCategoryProvider);
              }
              return UnexpectedError(allCategoryProvider);
            },
            loading: () => Loading(),
          );
        },
      )),
    );
  }

  //Make custom designed app bar
  AppBar _customAppBar() {
    return AppBar(
      toolbarHeight: 48,
      backgroundColor: MyColors.primaryColor,
      title: Image.asset(
        imagePath + "logo.png",
        height: 32,
        width: 100,
        alignment: Alignment.center,
        color: Colors.white,
      ),
      titleSpacing: 0,
      leading: const Icon(
        Icons.menu_rounded,
        size: 38,
        color: Colors.white,
      ),
      actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: rightPadding),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsView()));
                },
                child: Image.asset(
                  imagePath + "maharashtra.png",
                  height: 24,
                  width: 24,
                ))),
        Padding(
            padding: const EdgeInsets.only(right: rightPadding),
            child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  imagePath + "search.png",
                  height: 24,
                  width: 24,
                ))),
        Padding(
            padding: const EdgeInsets.only(right: rightPadding),
            child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  imagePath + "podcast_ic.png",
                  height: 24,
                  width: 24,
                ))),
        Padding(
            padding: const EdgeInsets.only(right: rightPadding),
            child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  imagePath + "video_ic.png",
                  height: 24,
                  width: 24,
                ))),
        Padding(
            padding: const EdgeInsets.only(right: rightPadding),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsView()));
                },
                child: Image.asset(
                  imagePath + "profile_ic.png",
                  height: 24,
                  width: 24,
                )))
      ],
    );
  }
}
