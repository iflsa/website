import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    @required ScrollController this.ctrl,
  }) : super(key: key);

  final ScrollController ctrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100.0,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: Colors.black,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Flex(
            direction: Axis.horizontal,
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
                        text: "Milo\n",
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
                  height: MediaQuery.of(context).size.height / 1.5,
                ),
              )
            ],
          ),
          SizedBox(
            height: 100.0,
            width: MediaQuery.of(context).size.width / 3,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  ctrl.animateTo(
                    MediaQuery.of(context).size.height - 100,
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
          )
        ]),
      ),
    );
  }
}
