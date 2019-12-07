import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:website/model/MyUtils.dart';

class AboutPanel extends StatelessWidget {
  const AboutPanel({@required this.title, @required this.text, Key key})
      : super(key: key);

  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: MyUtils.pageHeight(context) * 0.8,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontFamily: "Raleway-SemiBold",
                  ),
                ),
                Expanded(
                  child: Center(
                    child: AutoSizeText(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontFamily: "Raleway",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
