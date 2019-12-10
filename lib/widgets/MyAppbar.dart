import 'package:flutter/material.dart';
import 'package:website/model/MyUtils.dart';
import 'package:website/widgets/AppbarBtn.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar(this.ctrl, this.scrl, {Key key}) : super(key: key);
  final ScrollController ctrl;
  final double scrl;
  isUnderlined(ctx, int n) =>
      (scrl + MediaQuery.of(ctx).size.height / 2) ~/
          (MediaQuery.of(ctx).size.height - 100.0) ==
      n;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100.0,
        width: MyUtils.pageWidth(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Miłosz Ratajczyk",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontFamily: "Raleway-SemiBold",
              ),
            ),
            Row(
              children: <Widget>[
                AppbarBtn(
                    text: "Home",
                    onTap: () {
                      ctrl.animateTo(
                        0.0,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    },
                    underlined: isUnderlined(context, 0)),
                AppbarBtn(
                    text: 'About me',
                    onTap: () {
                      ctrl.animateTo(
                        MediaQuery.of(context).size.height - 100,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    },
                    underlined: isUnderlined(context, 1)),
                AppbarBtn(
                    text: 'My work',
                    onTap: () {
                      ctrl.animateTo(
                        (MediaQuery.of(context).size.height - 100) * 2,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    },
                    underlined: isUnderlined(context, 2)),
                AppbarBtn(
                    text: 'Contact',
                    onTap: () {
                      ctrl.animateTo(
                        (MediaQuery.of(context).size.height - 100) * 3,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    },
                    underlined: isUnderlined(context, 3)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
