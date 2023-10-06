import 'package:flutter/material.dart';

class TitleText extends Text{
  String string;

  TitleText ({required this.string}): super(
    string,
    style: TextStyle(fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
        fontSize: 20, color: Colors.pink
    ),
  );
}