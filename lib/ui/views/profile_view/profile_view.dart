import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/ui/components/customAppBar.dart';
import 'package:canton_design_system/canton_design_system.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
          context: context, title: "Profile", isNotificationRequired: true),
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
                Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.all(marginHalfHalf),
                                  decoration: BoxDecoration(
                                    color: MyColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              margin: const EdgeInsets.only(
                                  top: marginHalf, bottom: marginHalf),
                              width: profilePicSize,
                              height: profilePicSize,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          "https://learnenglish.britishcouncil.org/sites/podcasts/files/2021-10/RS6715_492969113-hig.jpg")))),
                        ],
                      ),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Parshuram Pathave",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ))
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
        ],
      ),
    );
  }
}
