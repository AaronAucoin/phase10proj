import 'package:flutter/material.dart';

class GameLobbyScreen extends StatelessWidget {
  const GameLobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    final players = [username, 'Player2', 'Player3'];

    return Scaffold(
      appBar: AppBar(title: const Text('Game Lobby')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Waiting for players...', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          ...players.map((player) => ListTile(title: Text(player))).toList(),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/game'),
            child: const Text('Start Game'),
          )
        ],
      ),
    );
  }
}
