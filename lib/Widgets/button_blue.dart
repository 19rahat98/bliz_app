import 'package:flutter/material.dart';

Widget buttonBlue(String buttonTitle, Color textColor){
  return Container(
    height: 50.0,
    child: OutlineButton(
      onPressed: () {},
      //TODO n
      child: Text(
        buttonTitle,
        style: TextStyle(color: textColor),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      borderSide: BorderSide(color: Colors.grey),
      highlightedBorderColor: Colors.grey,
    ),
  );
}