import 'package:flutter/material.dart';

class ComponentText {
  static Widget buildTextWidget(
      {String title,
      TextAlign textAlign = TextAlign.start,
      TextOverflow overflow = TextOverflow.ellipsis,
      int maxLines = null,
      bool softWrap = false,
      Color color = Colors.grey,
      double fontSize = 15.0,
      FontWeight fontWeight = FontWeight.normal,
      TextDecoration textDecoration = TextDecoration.none}) {
    return Text(
      title??'',
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      style: TextStyle(
        decoration: textDecoration,
        color: color,
        fontSize: fontSize,
        fontFamily: 'padaloma.regular',
        fontWeight: fontWeight,
      ),
    );
  }
}
