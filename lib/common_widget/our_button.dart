import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton({onpress, color, textColor, String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
    primary: color,
    padding: EdgeInsets.all(12) // Background color
  ),
    onPressed:onpress,
    child: title!.text.color(textColor).fontFamily(bold).make()
    );
}