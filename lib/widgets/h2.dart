import 'package:curriculum/global.dart';
import 'package:flutter/material.dart';

Widget h2(
  String label, {
  double padding = 4,
  Color color = Colors.white,
}) =>
    Padding(
      padding: EdgeInsets.only(left: padding),
      child: Text(
        strings[label]![lang]!,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 24,
          color: color,
        ),
      ),
    );
