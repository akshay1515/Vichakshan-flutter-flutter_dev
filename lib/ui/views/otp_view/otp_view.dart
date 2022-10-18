import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vichakshan_news_flutter/ui/views/main_home_page.dart';

import '../../../config/constants.dart';
import '../../../config/news_exceptions.dart';
import '../../../global/global.dart';
import '../../../models/CommonResult.dart';
import '../../../providers/news_providers.dart';
import '../../components/error_body.dart';
import '../../components/unexpected_error.dart';

class OTPView extends StatefulWidget {
  const OTPView({Key? key}) : super(key: key);

  @override
  _OTPViewState createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }
}

Widget _content() {
  return Column(
      // children: <Widget>[_body()],
      );
}

Widget _body(BuildContext context) {
  return Column(
    children: [
      Flexible(
        child: _topDesign(context),
        flex: 1,
      ),
      Flexible(
        child: _bottomDesign(context),
        flex: 2,
      ),
    ],
  );
}

Widget _topDesign(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(imagePath + "top_design.png"),
              fit: BoxFit.fill),
        ),
      ),
      Container(
        alignment: Alignment.center,
        width: Global.width(context),
        height: Global.height(context),
        child: Padding(
            padding: const EdgeInsets.only(top: margin),
            child: Image.asset(imagePath + "mic.png", height: 160, width: 160)),
      ),
      Container(
        margin: const EdgeInsets.only(top: 120, left: 16),
        alignment: Alignment.bottomLeft,
        height: 148,
        child: Image.asset(imagePath + "doted_vector.png"),
      ),
      Container(
        alignment: Alignment.centerLeft,
        height: 275,
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Image.asset(imagePath + "half_ellips.png"),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        height: 175,
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Image.asset(imagePath + "right_vector.png"),
        ),
      ),
    ],
  );
}

Widget _bottomDesign(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
          color: Colors.white,
          alignment: Alignment.topCenter,
          width: Global.width(context),
          height: Global.height(context),
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Image.asset(
              imagePath + "logo1.png",
              height: 130,
              width: 130,
            ),
          )),
      _buttonClickUI(context),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By continuing you agree to our ",
                  style: TextStyle(fontSize: margin12, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Terms of service ",
                    style:
                        TextStyle(fontSize: margin12, color: Colors.cyanAccent),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: marginHalf),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "and ",
                  style: TextStyle(fontSize: margin12, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Privacy & Legal Policy",
                    style:
                        TextStyle(fontSize: margin12, color: Colors.cyanAccent),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    ],
  );
}

Widget _buttonClickUI(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a search term',
          ),
          keyboardType: TextInputType.number,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: marginHalf),
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Did not received OTP?",
                  style: TextStyle(fontSize: margin12, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Resend OTP",
                    style:
                        TextStyle(fontSize: margin12, color: Colors.cyanAccent),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      _buttonDesign(context, "Continue"),
    ],
  );
}

Widget _buttonDesign(BuildContext context, String title) {
  double btnMargin = (title == "Skip") ? 275 : 75;
  double topMargin = (title == "Skip") ? 24 : margin;

  return GestureDetector(
    onTap: () {
      switch (title) {
        case 'Continue':
          CantonMethods.viewTransition(context, HomeView());
          break;
      }
    },
    child: Center(
        child: Container(
      margin: EdgeInsets.only(top: topMargin),
      width: Global.width(context) - btnMargin,
      height: buttonHeight,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(marginHalf)),
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 170, 206, 223),
            MyColors.primaryColor
          ])),
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    )),
  );
}

Widget _settingsItem(String title) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.only(left: margin, right: 24),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}

Widget _loginWithPhone(BuildContext context) {
  dynamic loginProvider = sendOTPProvider(parameters: {
    "apiVersion": "1.0",
    "token":
        "c4Q7FPh1SsiAMlVDryKMIv:APA91bF54BeFs8WuODtOJUXyXhwlhOdN3NkUQODtUr504oENlpMTxJFUdXwwmMLX7VcJ12nGFrRhOyCpv6JzUdMkx42wfZAawl0Qn7NMS8oYrJ4O9BN1PGQFlNiu8H7_ThtGzlpHeSP3",
    "imei": "8762861d-a170-439b-bbe1-ccc96ce2aa87",
    "macId": "1.0",
    "userType": "Reader",
    "mobile": "7350280897",
    "name": "",
  });

  return Consumer(
    builder: (context, ref, child) {
      return ref.watch(loginProvider).when(
            error: (e, s) {
              if (e is NewsExceptions) {
                return ErrorBody(e.message, loginProvider);
              }
              return UnexpectedError(loginProvider);
            },
            loading: () => Loading(),
            data: (articles) {
              final result = articles as CommonResult;
              return result.ack
                  ? debugPrint("parshu true")
                  : debugPrint("parshu false");
            },
          );
    },
  );
}

Widget _verifyOTP(BuildContext context) {
  dynamic loginProvider = verifyOTPProvider(parameters: {
    "apiVersion": "1.0",
    "token":
        "c4Q7FPh1SsiAMlVDryKMIv:APA91bF54BeFs8WuODtOJUXyXhwlhOdN3NkUQODtUr504oENlpMTxJFUdXwwmMLX7VcJ12nGFrRhOyCpv6JzUdMkx42wfZAawl0Qn7NMS8oYrJ4O9BN1PGQFlNiu8H7_ThtGzlpHeSP3",
    "imei": "8762861d-a170-439b-bbe1-ccc96ce2aa87",
    "macId": "1.0",
    "userType": "Reader",
    "mobile": "7350280897",
    "name": "",
  });

  return Consumer(
    builder: (context, ref, child) {
      return ref.watch(loginProvider).when(
            error: (e, s) {
              if (e is NewsExceptions) {
                return ErrorBody(e.message, loginProvider);
              }
              return UnexpectedError(loginProvider);
            },
            loading: () => Loading(),
            data: (articles) {
              final result = articles as CommonResult;
              return result.ack
                  ? debugPrint("parshu true")
                  : debugPrint("parshu false");
            },
          );
    },
  );
}
