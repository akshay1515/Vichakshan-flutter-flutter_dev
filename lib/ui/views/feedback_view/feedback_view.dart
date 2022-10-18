import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/ui/components/customAppBar.dart';
import 'package:canton_design_system/canton_design_system.dart';

import '../../../global/global.dart';

class FeedbackView extends StatelessWidget {
  const FeedbackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        primary: Colors.white,
        elevation: marginHalfHalf,
        fixedSize: const Size(120, 38),
        padding: const EdgeInsets.symmetric(
            horizontal: margin, vertical: marginHalfHalf),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(marginHalf)),
        ),
        backgroundColor: MyColors.primaryColor);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customCommonAppBar(
          context: context, title: "Feedback", isNotificationRequired: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
              padding:
                  EdgeInsets.only(left: margin, right: margin, top: margin),
              child: Text(
                'Your feedbback is valuable to us',
                style: TextStyle(fontSize: margin, color: Colors.grey),
              )),
          const Padding(
              padding: EdgeInsets.only(
                left: margin,
                top: marginHalfHalf,
                right: margin,
              ),
              child: Divider(
                color: Colors.black,
                thickness: 1,
              )),
          const Padding(
              padding:
                  EdgeInsets.only(left: margin, right: margin, top: margin),
              child: SizedBox(
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: margin12),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(marginHalf)),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(marginHalf)),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    hintText: "Title",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              )),
          const Padding(
              padding: EdgeInsets.only(
                  left: margin, right: margin, top: marginHalf, bottom: margin),
              child: SizedBox(
                height: 120,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(marginHalf)),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(marginHalf)),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    hintText: "Description",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              style: flatButtonStyle,
              onPressed: () {},
              child: const Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
