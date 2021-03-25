import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/game_data.dart';
import 'package:tic_tac_toe/utilities/constants.dart';
import 'package:provider/provider.dart';

class BottomWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    if (Provider.of<GameData>(context).game.checkCompletion()) {
      return TextButton(
        onPressed: () {
          Provider.of<GameData>(context, listen: false).resetGame();
        },
        child: Text('New Game'),
        style: kNewGameButtonStyle
      );
    } else {
      return Text(
        "Team ${Provider.of<GameData>(context).game.turn}'s turn",
        style: kGameScreenTextStyle
      );
    }
  }
}
