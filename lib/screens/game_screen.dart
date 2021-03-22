import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  static const String id = 'game_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic-Tac-Toe'),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}