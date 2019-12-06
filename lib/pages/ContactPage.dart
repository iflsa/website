import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
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
        color: Color.fromARGB(255, 31, 31, 31),
      ),
    );
  }
}
