import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/game.dart';
import 'package:tic_tac_toe/utilities/constants.dart';

class BoardWidget extends StatelessWidget {

  final Game game;
  final Function editTile;

  BoardWidget(this.game, this.editTile);

  @override
  Widget build(BuildContext context) {
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
                        editTile(0);
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
                        editTile(1);
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
                        editTile(2);
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
                        editTile(3);
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
                        editTile(4);
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
                        editTile(5);
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
                        editTile(6);
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
                        editTile(7);
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
                        editTile(8);
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
    );
  }
}
