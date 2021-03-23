import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/game.dart';


class BottomWidget extends StatelessWidget {

  final Game game;
  final Function resetGame;

  BottomWidget(this.game, this.resetGame);

  @override
  Widget build(BuildContext context) {
    if (game.checkCompletion()) {
      return TextButton(
        onPressed: () {
          resetGame();
        },
        child: Text('New Game'),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(18.0)),
          backgroundColor:
          MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w600,
          )),
        ),
      );
    } else {
      return Text(
        "Team ${game.turn}'s turn",
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 50.0,
          fontWeight: FontWeight.w500,
        ),
      );
    }
  }
}
