import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:website/model/Work.dart';

class WorkPanel extends StatelessWidget {
  const WorkPanel({@required this.id, Key key}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final work = Work(id);
    return SizedBox(
      width: 400,
      height: (MediaQuery.of(context).size.height - 100) * 0.8,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    work.asset,
                    fit: BoxFit.contain,
                  ),
                ),
                Flexible(
                  child: Text(
                    work.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.black,
                      fontFamily: "Raleway-SemiBold",
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: AutoSizeText(
                      work.disc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: 200.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          window.open(work.link, work.title);
                        },
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: "Raleway-SemiBold",
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
