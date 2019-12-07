import 'package:flutter/material.dart';
import 'package:website/model/MyUtils.dart';
import 'package:website/widgets/WorkPanel.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({
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
                "My work:",
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
                    WorkPanel(id: 0),
                    WorkPanel(id: 1),
                    WorkPanel(id: 2),
                    WorkPanel(id: 3),
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
