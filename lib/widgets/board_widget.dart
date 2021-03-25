import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/game_data.dart';
import 'package:tic_tac_toe/utilities/constants.dart';
import 'package:provider/provider.dart';

class BoardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<GameData>(
      builder: (context, gameData, child) {
        return Container(
          constraints: BoxConstraints(maxWidth: 400.0),
          child: AspectRatio(
            aspectRatio: 1,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            gameData.editTile(0);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[0],
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
                            gameData.editTile(1);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[1],
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
                            gameData.editTile(2);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[2],
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
                            gameData.editTile(3);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[3],
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
                            gameData.editTile(4);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[4],
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
                            gameData.editTile(5);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[5],
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
                            gameData.editTile(6);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[6],
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
                            gameData.editTile(7);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[7],
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
                            gameData.editTile(8);
                          },
                          child: Center(
                            child: Text(
                              gameData.game.tiles[8],
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
        );
      }
    );
  }
}
