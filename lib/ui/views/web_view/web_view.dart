import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:vichakshan_news_flutter/ui/components/customAppBar.dart';

String titleText = '';
String baseUrl = '';

class CustomWebView extends StatefulWidget {
  final String loadWhat;
  CustomWebView({required this.loadWhat, Key? key}) : super(key: key) {
    switch (loadWhat.toLowerCase()) {
      case 'about':
        titleText = 'About Us';
        baseUrl = "https://www.vichakshan.news/about-us";
        break;
      case 'terms':
        titleText = 'Terms & Conditions';
        baseUrl = "https://www.vichakshan.news/terms-of-use";
        break;
      case 'contact':
        titleText = 'Contact Us';
        baseUrl = "https://www.vichakshan.news/contact-us";
        break;
      case 'privacy':
        titleText = 'Privacy & Legal Policy';
        baseUrl = "https://www.vichakshan.news/terms-of-use";
        break;
    }
  }

  @override
  _CustomWebViewState createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customCommonAppBar(
          context: context, title: titleText, isNotificationRequired: false),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(baseUrl)),
      ),
    );
  }
}
