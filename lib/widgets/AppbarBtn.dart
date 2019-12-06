import 'package:flutter/material.dart';

class AppbarBtn extends StatelessWidget {
  const AppbarBtn(
      {@required String this.text,
      @required Function this.onTap,
      @required bool this.underlined,
      Key key})
      : super(key: key);

  final String text;
  final Function onTap;
  final bool underlined;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            decoration: underlined ? TextDecoration.underline : null,
            fontFamily: "Raleway-Light",
          ),
        ),
      ),
    );
  }
}
