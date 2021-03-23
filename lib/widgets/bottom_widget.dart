import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/game.dart';
import 'package:tic_tac_toe/utilities/constants.dart';

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
        style: kNewGameButtonStyle
      );
    } else {
      return Text(
        "Team ${game.turn}'s turn",
        style: kGameScreenTextStyle
      );
    }
  }
}
