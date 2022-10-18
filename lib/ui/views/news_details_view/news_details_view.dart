import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/global/global.dart';
import '../../../ui/views/news_details_view/components/video_icon.dart';

class NewsDetailsView extends StatefulWidget {
  const NewsDetailsView({Key? key}) : super(key: key);

  @override
  _NewsDetailsViewState createState() => _NewsDetailsViewState();
}

final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-DfHpYeqiq9bsGeGsTr2gi-SH6R6B6925Hg&usqp=CAU',
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => ClipRRect(
            child: Stack(
          children: <Widget>[
            Container(
                decoration: const BoxDecoration(color: Colors.white),
                width: double.infinity,
                height: 300,
                child: Image.network(
                  item,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: double.infinity,
                )),
            Align(
              alignment: Alignment.center,
              child: getVideoIcon(isLarge: true, isVideo: true),
            )
          ],
        )))
    .toList();

class _NewsDetailsViewState extends State<NewsDetailsView> {
  final ScrollController _scrollController = ScrollController();

  int _current = 0;
  final CarouselController _controller = CarouselController();

  Widget getCarousal() {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
          height: 250,
          autoPlay: true,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
      items: imageSliders,
    );
  }

  Widget dotsCorousal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: marginHalf,
            height: marginHalf,
            margin: const EdgeInsets.symmetric(
                vertical: marginHalfHalf, horizontal: marginHalfHalf),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : MyColors.primaryColor)
                    .withOpacity(_current == entry.key ? 1 : 0.2)),
          ),
        );
      }).toList(),
    );
  }

  Widget newsTopDetails() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0), topRight: Radius.circular(0)),
          child: Container(
            width: Global.width(context),
            color: Colors.white,
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.only(top: margin, left: margin),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "प्रकाश मारावार यांच्या अर्जाची दखल घेऊन, राष्ट्रीय महामार्ग भूसंपादन प्रकरण विभागीय आयुक्तांकडून चौकशीचे आदेश",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: marginHalf, left: margin),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Image.asset(
                            imagePath + 'avatar.png',
                            height: 48,
                            width: 48,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: marginHalf),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "प्रतिनिधी",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: margin,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Thu, 10 Mar 2022 10:06 AM",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))),
            ]),
          ),
        ),
        Positioned(
          top: newsDetailsIconTopPos,
          left: Global.width(context) - 110,
          child: SizedBox(
              height: newsDetailsIconSize,
              width: newsDetailsIconSize,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(imagePath + "bookmark.png"),
              )),
        ),
        Positioned(
          top: newsDetailsIconTopPos,
          left: Global.width(context) - 70,
          child: SizedBox(
              height: newsDetailsIconSize,
              width: newsDetailsIconSize,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(imagePath + "share.png"),
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            getCarousal(),
            // FractionalTranslation(
            //     translation: Offset(0, -2), child: dotsCorousal()),
            // FractionalTranslation(
            //     translation: const Offset(0, -0.4), child: newsTopDetails()),

            newsTopDetails(),
            Expanded(
                child: InAppWebView(
                    initialOptions: InAppWebViewGroupOptions(
                        crossPlatform:
                            InAppWebViewOptions(minimumFontSize: 24)),
                    initialData: InAppWebViewInitialData(
                      baseUrl: null,
                      encoding: 'utf8',
                      mimeType: 'text/html',
                      data:
                          "<p>औरंगाबाद : कन्नड तालुक्यातील वाकी येथील श्री शिवेश्वर संस्थानच्या विकास कामांचे महसूल तथा ग्रामविकास खात्याचे&nbsp;राज्यमंत्री अब्दुल सत्तार यांच्या हस्ते शुक्रवार दि. १८ मार्च रोजी&nbsp;भूमिपूजन करण्यात आले. महसूल तथा ग्रामविकास राज्यमंत्री अब्दुल सत्तार यांनी गेल्या काही दिवसांपूर्वी एका कार्यक्रमा निमित्ताने श्री. शिवेश्वर संस्थान वाकी&nbsp;येथे भेट दिली होती. यावेळी त्यांनी संस्थान परिसरातील विकास कामांसाठी ग्रामविकास विभागाच्या माध्यमातून २५ लाख रुपये निधी देण्याची घोषणा केली होती. त्याच घोषणेची पूर्तता म्हणून महसूल तथा ग्रामविकास राज्यमंत्री अब्दुल सत्तार यांनी मंदिर परिसरातील प्रलंबित विविध विकास कामांना निधी देऊन त्या कामांचे भूमिपूजन केले.</p>\r\n\r\n<p>यावेळी आमदार उदयसिंग राजपूत, श्री. शिवेश्वर संस्थानचे नामदेव महाराज, जिल्हा बँकेचे उपाध्यक्ष अर्जुन&nbsp;गाढे, शिवसेना उपजिल्हाप्रमुख अवचितराव वळवळे, तालुकाप्रमुख केतन काजे, जि. प. बांधकाम सभापती किशोर बलांडे, सेवानिवृत्त प्राचार्य नामदेवराव चापे, अवचितराव वळवळे, जि. प. सदस्य संदीप सपकाळ, प. स. सदस्य समाधान गायकवाड, नॅशनल सुत गिरणीचे संचालक राजेंद्र ठोंबरे, कृषी उत्पन्न बाजार समितीचे संचालक सतीश ताठे, अखिल भारतीय वारकरी संघटनेचे कृष्णा लहाने, जिल्हा बँकेचे संचालक डॉ. मनोज राठोड, पैठणचे माजी नगराध्यक्ष जितसिंग करकोटक यांच्यासह सुनील पालोदकर, काकासाहेब जंजाळ, लक्ष्मण गवळी, अलियार पठाण, प्रताप गुजर, नाना येवले आदींची उपस्थिती होती.</p>",
                    )))
          ],
        );
      },
    ));
  }
}
