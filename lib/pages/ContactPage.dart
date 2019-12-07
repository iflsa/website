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
            Expanded(child: Text("Contact me")),
          ],
        ),
      ),
    );
  }
}
