import 'package:flutter/foundation.dart';

class GameProvider with ChangeNotifier {
  String _username = '';
  String _gameCode = '';
  List<String> _players = [];
  Map<String, int> _scores = {};

  String get username => _username;
  String get gameCode => _gameCode;
  List<String> get players => List.unmodifiable(_players);
  Map<String, int> get scores => Map.unmodifiable(_scores);

  void setUsername(String name) {
    _username = name;
    notifyListeners();
  }

  void setGameCode(String code) {
    _gameCode = code;
    notifyListeners();
  }

  void addPlayer(String name) {
    if (!_players.contains(name)) {
      _players.add(name);
      _scores[name] = 0;
      notifyListeners();
    }
  }

  void updateScore(String name, int score) {
    _scores[name] = score;
    notifyListeners();
  }

  void resetGame() {
    _gameCode = '';
    _players.clear();
    _scores.clear();
    notifyListeners();
  }
}
