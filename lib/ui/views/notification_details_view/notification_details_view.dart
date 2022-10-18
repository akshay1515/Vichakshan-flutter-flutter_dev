import 'package:vichakshan_news_flutter/config/constants.dart';
import 'package:vichakshan_news_flutter/models/News.dart';
import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/ui/components/customAppBar.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_large.dart';
import 'package:vichakshan_news_flutter/ui/components/news_card_normal.dart';
import 'package:vichakshan_news_flutter/ui/components/notification_card.dart';

News news = News();

class NotificationDetailsView extends StatelessWidget {
  const NotificationDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: customCommonAppBar(
            context: context,
            title: "Notifications",
            isNotificationRequired: false),
        body: Padding(
          padding: const EdgeInsets.only(
              left: margin12,
              top: margin12,
              right: margin12,
              bottom: marginHalfHalf),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This is title",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: cardTitleTextSize),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "12 Sept 2022",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: marginHalf, bottom: marginHalf),
                child: Image.network(
                  'https://content3.jdmagicbox.com/comp/sangli/m9/9999px233.x233.121023103024.i8m9/catalogue/natural-photo-studio-pragati-colony-sangli-photo-studios-elm6ffa0qn.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'Punes public transaportation buses are started like nothing happen as COVID-19. People are back to work.',
                style: TextStyle(fontSize: margin),
              )
            ],
          ),
        ));
  }
}
