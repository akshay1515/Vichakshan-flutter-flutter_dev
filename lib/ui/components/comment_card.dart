import 'package:canton_design_system/canton_design_system.dart';

import '../../config/constants.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // CantonMethods.viewTransition(context, NewsView(news));
      },
      child: Card(
        margin:
            const EdgeInsets.only(top: marginHalf, left: margin, right: margin),
        shape: const SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius.all(
              SmoothRadius(
                cornerRadius: defaultBorderRadius,
                cornerSmoothing: 1,
              ),
            ),
            side: BorderSide(width: 1, color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: margin),
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: marginHalf),
                      width: newsDetailsIconSize,
                      height: newsDetailsIconSize,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://learnenglish.britishcouncil.org/sites/podcasts/files/2021-10/RS6715_492969113-hig.jpg")))),
                  const Padding(
                    padding: EdgeInsets.only(left: margin),
                    child: Text(
                      "Username",
                      style: TextStyle(color: Colors.grey, fontSize: margin),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48 + margin),
              child: const Text(
                "शिष्यवृत्तीसाठी आता अखेरचे ३ दिवस ३१ जानेवारीपर्यंत अखेरची मुदत शिष्यवृत्तीसाठी आता अखेरचे ३ दिवस ३१ जानेवारीपर्यंत अखेरची मुदत",
                style: TextStyle(fontSize: cardTitleTextSize),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: marginHalf, right: margin),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Fri,04 Mar 2022 07:52 AM",
                  maxLines: 1,
                  textScaleFactor: 0.9,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
