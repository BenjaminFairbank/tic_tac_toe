import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utilities/constants.dart';
import 'package:tic_tac_toe/models/game.dart';
import 'package:tic_tac_toe/widgets/bottom_widget.dart';

class GameScreen extends StatefulWidget {
  static const String id = 'game_screen';

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  Game game = Game();

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
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(0);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[0],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 6.0,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(3.0),
                                topRight: Radius.circular(3.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(1);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[1],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 6.0,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(3.0),
                                topRight: Radius.circular(3.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(2);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[2],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(3);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[3],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 6.0,
                            color: Colors.blueGrey,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(4);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[4],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 6.0,
                            color: Colors.blueGrey,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(5);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[5],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(6);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[6],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 6.0,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(3.0),
                                bottomRight: Radius.circular(3.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(7);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[7],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 6.0,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(3.0),
                                bottomRight: Radius.circular(3.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  game.changeTile(8);
                                });
                              },
                              child: Center(
                                child: Text(
                                  game.tiles[8],
                                  style: kTileStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BottomWidget(game, resetGame),
            ],
          ),
        ),
      ),
    );
  }
}
