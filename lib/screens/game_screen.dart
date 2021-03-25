import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/game_data.dart';
import 'package:tic_tac_toe/utilities/constants.dart';
import 'package:tic_tac_toe/widgets/board_widget.dart';
import 'package:tic_tac_toe/widgets/bottom_widget.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatelessWidget {
  static const String id = 'game_screen';

  @override
  Widget build(BuildContext context) {
    return Consumer<GameData>(
      builder: (context, gameData, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Tic-Tac-Toe'),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    gameData.game.checkCompletion() && gameData.game.winner != '' ? 'Team ${gameData.game.winner} wins!' : '',
                    style: kGameScreenTextStyle
                  ),
                  BoardWidget(),
                  BottomWidget(),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
