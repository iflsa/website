import 'package:flutter/material.dart';
import 'package:website/model/MyUtils.dart';
import 'package:website/widgets/AboutPanel.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key key,
    @required ScrollController this.ctrl,
  }) : super(key: key);

  final ScrollController ctrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MyUtils.pageHeight(context),
        width: MyUtils.pageWidth(context),
        child: Column(
          children: <Widget>[
            Container(
              width: MyUtils.pageWidth(context),
              child: Text(
                "About me:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.white,
                  fontFamily: "Raleway-Light",
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AboutPanel(
                      title: "Personal info",
                      text:
                          "I'm a young and creative software developer focused mainly on designing and building intuitive and aesthetic mobile applications for Android and iOS using Flutter. I also experiment with Flutter for Web and Desktop.\nLast, but not least I'm a christan - an active follower of Jesus Christ in every aspect of my life.\n1 John 5:12",
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    AboutPanel(
                      title: "Skill set",
                      text:
                          "I'm also fluent in English and Polish, written and spoken.",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
