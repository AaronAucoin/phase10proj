import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final playerScores = {'You': 75, 'Player2': 50, 'Player3': 90};

    return Scaffold(
      appBar: AppBar(title: const Text('Phase 10')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Scores:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...playerScores.entries.map((e) => ListTile(
                title: Text(e.key),
                trailing: Text(e.value.toString()),
              )),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/camera'),
            child: const Text('Scan Cards for Score'),
          )
        ],
      ),
    );
  }
}
