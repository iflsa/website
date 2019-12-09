import 'dart:html' as html;
import 'dart:html';

import 'package:draggable_scrollbar/draggable_scrollbar.dart';
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

    _mutationObserver = MutationObserver(
        (List<dynamic> mutations, MutationObserver observer) =>
            _translateHack());

    WidgetsBinding.instance.addPostFrameCallback((_) => _translateHack());
    super.initState();
  }

  MutationObserver _mutationObserver;

  void _translateHack() async {
    List<Node> nodes = window.document.getElementsByTagName("*");

    for (Node node in nodes) {
      _mutationObserver.observe(node, childList: true);
      html.Element el = node as html.Element;
      if (el.style.transform.isEmpty) continue;
      if (!el.style.transform.contains("\.")) continue;
      el.style.transform = _normalizeTranslate(el.style.transform);
    }
  }

  String _normalizeTranslate(String value) {
    if (value.length > 12) {
      if (value.substring(0, 10) == "translate(") {
        String p = value
            .replaceFirst("translate(", "")
            .replaceFirst(")", "")
            .replaceAll("px", "");
        List<String> m = p.split(", ");
        return "translate(" +
            (double.parse(m[0]).toInt()).toString() +
            "px, " +
            (double.parse(m[1]).toInt()).toString() +
            "px)";
      } else if (value.substring(0, 12) == "translate3d(") {
        String p = value
            .replaceFirst("translate3d(", "")
            .replaceFirst(")", "")
            .replaceAll("px", "");
        List<String> m = p.split(", ");
        return "translate3d(" +
            (double.parse(m[0]).toInt()).toString() +
            "px, " +
            (double.parse(m[1]).toInt()).toString() +
            "px, " +
            double.parse(m[2]).toInt().toString() +
            "px)";
      }
    }
    return value;
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
                controller: _ctrl,
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
