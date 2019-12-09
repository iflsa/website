import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:website/model/MyUtils.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
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
                "Contact:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.white,
                  fontFamily: "Raleway-Light",
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Email: \t",
                        style: TextStyle(fontFamily: "Raleway-SemiBold"),
                      ),
                      TextSpan(
                        text: "\t milosz@ratajczyk.me \n",
                        style: TextStyle(fontFamily: "Raleway-Light"),
                      ),
                      TextSpan(
                        text: "\nDiscord: ",
                        style: TextStyle(fontFamily: "Raleway-SemiBold"),
                      ),
                      TextSpan(
                        text: " miloszratajczyk#5963 \n",
                        style: TextStyle(fontFamily: "Raleway-Light"),
                      ),
                      TextSpan(
                        text: "\nGithub: \t",
                        style: TextStyle(fontFamily: "Raleway-SemiBold"),
                      ),
                      TextSpan(
                        text: "\t https://github.com/miloszratajczyk \n",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Raleway-Light",
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            window.open(
                                "https://github.com/miloszratajczyk", "Github");
                          },
                      ),
                      TextSpan(
                        text: "\nFiverr: \t",
                        style: TextStyle(fontFamily: "Raleway-SemiBold"),
                      ),
                      TextSpan(
                        text: "\t https://www.fiverr.com/mioszratajczyk \n",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Raleway-Light",
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            window.open("https://www.fiverr.com/mioszratajczyk",
                                "Fiverr");
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
