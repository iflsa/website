import 'package:flutter/material.dart';

class MyUtils {
  static pageHeight(ctx) => MediaQuery.of(ctx).size.height - 100.0;
  static pageWidth(ctx) => MediaQuery.of(ctx).size.width * 0.9;
}
