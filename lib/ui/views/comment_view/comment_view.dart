import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/ui/components/comment_card.dart';
import 'package:canton_design_system/canton_design_system.dart';

import '../../../models/News.dart';

class CommentView extends StatelessWidget {
  const CommentView({required this.news, Key? key}) : super(key: key);
  final News news;
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(context: context, title: "Comments"),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 48),
              child: ListView.builder(
                  padding: const EdgeInsets.only(
                      bottom: margin + 6, top: marginHalf),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CommentCard();
                  }),
            ),
            Align(
                alignment: FractionalOffset.bottomCenter,
                child: _bottomCommentBar()),
          ],
        ));
  }
}

Widget _bottomCommentBar() {
  return Container(
    color: MyColors.primaryColor,
    height: 54,
    child: Row(children: [
      Flexible(
        flex: 8,
        child: Padding(
          padding: const EdgeInsets.only(
              left: marginHalf, top: marginHalf, bottom: marginHalf),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: marginHalf),
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              hintText: "Write Comment",
              hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ),
      ),
      Flexible(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              child:
                  Icon(Icons.arrow_circle_right_outlined, color: Colors.white),
            ),
          ))
    ]),
  );
}

AppBar customAppBar({required BuildContext context, required String title}) {
  return AppBar(
    toolbarHeight: 48,
    backgroundColor: MyColors.primaryColor,
    title: Text(
      title,
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    titleSpacing: 0,
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Icon(
        Icons.arrow_back_ios_rounded,
        size: 34,
        color: Colors.white,
      ),
    ),
  );
}
