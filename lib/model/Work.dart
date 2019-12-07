import 'package:flutter/material.dart';

class Work {
  final assets = [
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
  ];
  final titles = [
    "Windfall",
    "Tanball",
    "This website",
    "Flutter 2048",
  ];
  final discs = [
    "Windfall is an Android web browser where tabs are bubbles floating on your screen giving you the power of multitasking. It's build with Kotlin and Native Android to achive the best possible performence.",
    "Tanball is a simple game where you're supposed to put a ball inside a basket within 3 seconds. You can try it on Web, Android and iOS due to Flutter's grreat multiplatform features.",
    "The website you're currently on is made completely using relatively new technology of porting Flutter to Web and apperently it worked out pretty well as you can see.",
    "Flutter 2048 is a simple 2048 game reproduction using Flutter. It is my first project using this technology and the moment I fall in love with it.",
  ];
  final links = [
    "https://github.com/miloszratajczyk/windfall/",
    "https://github.com/miloszratajczyk/tanball/",
    "https://github.com/miloszratajczyk/website/",
    "https://github.com/miloszratajczyk/flutter2048/",
  ];

  int id;

  get asset => assets[id];
  get title => titles[id];
  get disc => discs[id];
  get link => links[id];

  Work(id) {
    this.id = id;
  }
}
