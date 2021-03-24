import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utilities/constants.dart';
import 'package:tic_tac_toe/models/game.dart';
import 'package:tic_tac_toe/widgets/board_widget.dart';
import 'package:tic_tac_toe/widgets/bottom_widget.dart';

class GameScreen extends StatefulWidget {
  static const String id = 'game_screen';

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  Game game = Game();

  void editTile (index) {
    setState(() {
      game.changeTile(index);
    });
  }

  void resetGame () {
    setState(() {
      game = Game();
    });
  }

  @override
  Widget build(BuildContext context) {
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
                game.checkCompletion() && game.winner != '' ? 'Team ${game.winner} wins!' : '',
                style: kGameScreenTextStyle
              ),
              BoardWidget(game, editTile),
              BottomWidget(game, resetGame),
            ],
          ),
        ),
      ),
    );
  }
}
