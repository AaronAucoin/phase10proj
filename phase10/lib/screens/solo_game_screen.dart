import 'package:flutter/material.dart';

class SoloGameScreen extends StatelessWidget {
  const SoloGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    final scores = {username: 65, 'AI Bot 1': 80, 'AI Bot 2': 70};

    return Scaffold(
      appBar: AppBar(title: const Text('Solo Game')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Solo Game vs AI', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...scores.entries.map((e) => ListTile(
                title: Text(e.key),
                trailing: Text('${e.value} pts'),
              )),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/camera'),
            child: const Text('Play Turn & Scan Cards'),
          )
        ],
      ),
    );
  }
}
