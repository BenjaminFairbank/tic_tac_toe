
class Game {

  List<String> _tiles = ['     ','     ','     ','     ','     ','     ','     ','     ','     ',];

  List<String> get tiles => _tiles;

  String _turn = 'X';

  String get turn => _turn;

  String _winner = '';

  String get winner => _winner;

  void changeTurn () {
    _turn = _turn == 'X' ? 'O' : 'X';
  }

  bool checkCompletion () {

    bool gameOverCheck () {
      int count = 0;
      for (var t in _tiles) {
        if (t != '     ') {
          count++;
        }
      }
      return count == 9;
    }

    if ((_tiles[0] == 'X' && _tiles[1] == 'X' && _tiles[2] == 'X')
        || (_tiles[3] == 'X' && _tiles[4] == 'X' && _tiles[5] == 'X')
        || (_tiles[6] == 'X' && _tiles[7] == 'X' && _tiles[8] == 'X')
        || (_tiles[0] == 'X' && _tiles[3] == 'X' && _tiles[6] == 'X')
        || (_tiles[1] == 'X' && _tiles[4] == 'X' && _tiles[7] == 'X')
        || (_tiles[2] == 'X' && _tiles[5] == 'X' && _tiles[8] == 'X')
        || (_tiles[0] == 'X' && _tiles[4] == 'X' && _tiles[8] == 'X')
        || (_tiles[2] == 'X' && _tiles[4] == 'X' && _tiles[6] == 'X')) {
      _winner = 'X';
      return true;
    } else if ((_tiles[0] == 'O' && _tiles[1] == 'O' && _tiles[2] == 'O')
        || (_tiles[3] == 'O' && _tiles[4] == 'O' && _tiles[5] == 'O')
        || (_tiles[6] == 'O' && _tiles[7] == 'O' && _tiles[8] == 'O')
        || (_tiles[0] == 'O' && _tiles[3] == 'O' && _tiles[6] == 'O')
        || (_tiles[1] == 'O' && _tiles[4] == 'O' && _tiles[7] == 'O')
        || (_tiles[2] == 'O' && _tiles[5] == 'O' && _tiles[8] == 'O')
        || (_tiles[0] == 'O' && _tiles[4] == 'O' && _tiles[8] == 'O')
        || (_tiles[2] == 'O' && _tiles[4] == 'O' && _tiles[6] == 'O')) {
      _winner = 'O';
      return true;
    } else if (gameOverCheck()) {
      return true;
    }
    return false;
  }

  void changeTile (index) {
    if (_tiles[index] == '     ' && !checkCompletion()) {
      _tiles[index] = _turn;
      changeTurn();
    }
  }
}