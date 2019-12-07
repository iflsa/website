import 'package:flutter/material.dart';
import 'package:website/model/MyUtils.dart';

import 'package:website/widgets/MyAppbar.dart';

import 'package:website/pages/AboutPage.dart';
import 'package:website/pages/ContactPage.dart';
import 'package:website/pages/HomePage.dart';
import 'package:website/pages/WorkPage.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _ctrl;
  getScreenSize() => MediaQuery.of(context).size;
  double scrl = 0.0;
  _scrollListener() {
    setState(() {
      scrl = _ctrl.offset;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _ctrl = ScrollController();

    _ctrl.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            MyAppbar(_ctrl, scrl),
            SizedBox(
              height: MyUtils.pageHeight(context),
              width: MediaQuery.of(context).size.width,
              child: Scrollbar(
                child: ListView(
                  controller: _ctrl,
                  children: <Widget>[
                    HomePage(ctrl: _ctrl),
                    AboutPage(ctrl: _ctrl),
                    WorkPage(ctrl: _ctrl),
                    ContactPage(ctrl: _ctrl),
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
