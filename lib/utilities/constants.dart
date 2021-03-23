import 'package:flutter/material.dart';

const TextStyle kTileStyle = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.w700,
  color: Colors.lightBlueAccent,
);

const TextStyle kGameScreenTextStyle = TextStyle(
  color: Colors.blueGrey,
  fontSize: 50.0,
  fontWeight: FontWeight.w500,
);

final ButtonStyle kNewGameButtonStyle = ButtonStyle(
  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(18.0)),
  backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  textStyle: MaterialStateProperty.all<TextStyle>(
    TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w600,
    ),
  ),
);