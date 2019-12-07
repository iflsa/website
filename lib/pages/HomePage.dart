import 'package:flutter/material.dart';
import 'package:website/model/MyUtils.dart';

class HomePage extends StatelessWidget {
  const HomePage({
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              //direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Hi, I'm ",
                          style: TextStyle(
                            fontSize: 80.0,
                            fontFamily: "Raleway-Light",
                          ),
                        ),
                        TextSpan(
                          text: "Miłosz\n",
                          style: TextStyle(
                            fontSize: 80.0,
                            fontFamily: "Raleway-SemiBold",
                          ),
                        ),
                        TextSpan(
                          text: 'I design & build awesome mobile apps.',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: "Raleway-Light",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Flexible(
                  flex: 1,
                  child: Image.asset(
                    "assets/Uglyface.png",
                    height: MyUtils.pageHeight(context) / 1.5,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100.0,
              width: MyUtils.pageWidth(context) / 3.0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    ctrl.animateTo(
                      MyUtils.pageHeight(context),
                      duration: Duration(seconds: 1),
                      curve: Curves.ease,
                    );
                  },
                  child: Text(
                    "Read more",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontFamily: "Raleway-Light",
                    ),
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
