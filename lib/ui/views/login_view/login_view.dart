import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vichakshan_news_flutter/models/CommonResult.dart';
import 'package:vichakshan_news_flutter/ui/views/login_view/components/google_sign.dart';
import 'package:vichakshan_news_flutter/ui/views/otp_view/otp_view.dart';

import '../../../config/constants.dart';
import '../../../config/news_exceptions.dart';
import '../../../global/global.dart';
import '../../components/error_body.dart';
import '../../components/unexpected_error.dart';
import '../../../providers/news_providers.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

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

bool isPhoneClicked = true;

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
      _buttonClickUI(context, isPhoneClicked),
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

Widget _buttonClickUI(BuildContext context, bool isPhone) {
  if (isPhone) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            keyboardType: TextInputType.number,
          ),
        ),
        _buttonDesign(context, "Get OTP"),
        const Center(
            child: Text(
          "OR",
          style: TextStyle(fontSize: margin),
        )),
        _buttonDesign(context, "Continue with Google"),
        _buttonDesign(context, "Skip"),
      ],
    );
  } else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buttonDesign(context, "Continue with Phone number"),
        _buttonDesign(context, "Continue with Google"),
        _buttonDesign(context, "Skip"),
      ],
    );
  }
}

Widget _buttonDesign(BuildContext context, String title) {
  double btnMargin = (title == "Skip") ? 275 : 75;
  double topMargin = (title == "Skip")
      ? 24
      : (isPhoneClicked && title == "Continue with Google")
          ? 0
          : margin;

  return GestureDetector(
    onTap: () {
      switch (title) {
        case 'Continue with Google':
          CantonMethods.viewTransition(context, SignIn());
          break;
        case 'Get OTP':
          CantonMethods.viewTransition(context, OTPView());
          break;
        case 'Skip':
          break;
        case 'Continue with Phone number':
          CantonMethods.viewTransition(context, _loginWithPhone(context));
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
