import 'package:flutter/foundation.dart';
import 'game.dart';

class GameData extends ChangeNotifier {

  Game game = Game();

  void editTile (index) {
    game.changeTile(index);
    notifyListeners();
  }

  void resetGame () {
    game = Game();
    notifyListeners();
  }

}