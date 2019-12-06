import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({
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
      ),
    );
  }
}
