import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/ui/components/customAppBar.dart';
import 'package:canton_design_system/canton_design_system.dart';

class JournalistView extends StatelessWidget {
  const JournalistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        primary: Colors.white,
        elevation: marginHalfHalf,
        minimumSize: const Size(double.infinity, 38),
        padding: const EdgeInsets.symmetric(
            horizontal: margin, vertical: marginHalfHalf),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(marginHalf)),
        ),
        backgroundColor: MyColors.primaryColor);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customCommonAppBar(
          context: context, title: "Journalist", isNotificationRequired: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                left: marginHalf, right: marginHalf, bottom: marginHalf),
            color: MyColors.primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Journalism',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(
                      top: marginHalfHalf,
                    ),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1.5,
                    )),
                const Padding(
                    padding:
                        EdgeInsets.only(top: marginHalfHalf, bottom: margin12),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Journalism, journalism that is conducted by people who are not professional journalists but who disseminate information using Web sites, blogs, and social media.",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))),
                Image.asset(
                  imagePath + 'citizen_journalist.jpeg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: margin),
            child: Text(
              'You are not a journalist',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Expanded(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(margin),
                      child: TextButton(
                        style: flatButtonStyle,
                        onPressed: () {},
                        child: Text('Apply for Journalist'.toUpperCase()),
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}
