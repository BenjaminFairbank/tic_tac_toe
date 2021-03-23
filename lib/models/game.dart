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

    List<String> options = ['X', 'O'];

    for (String option in options) {
      if ((_tiles[0] == option && _tiles[1] == option && _tiles[2] == option)
          || (_tiles[3] == option && _tiles[4] == option && _tiles[5] == option)
          || (_tiles[6] == option && _tiles[7] == option && _tiles[8] == option)
          || (_tiles[0] == option && _tiles[3] == option && _tiles[6] == option)
          || (_tiles[1] == option && _tiles[4] == option && _tiles[7] == option)
          || (_tiles[2] == option && _tiles[5] == option && _tiles[8] == option)
          || (_tiles[0] == option && _tiles[4] == option && _tiles[8] == option)
          || (_tiles[2] == option && _tiles[4] == option && _tiles[6] == option)) {
        _winner = option;
        return true;
      }
    }
    if (gameOverCheck()) {
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