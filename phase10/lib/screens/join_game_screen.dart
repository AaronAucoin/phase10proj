import 'package:flutter/material.dart';

class JoinGameScreen extends StatelessWidget {
  const JoinGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    final TextEditingController _codeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Join Game')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello $username!'),
            TextField(
              controller: _codeController,
              decoration: const InputDecoration(labelText: 'Enter Game Code'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lobby', arguments: username);
              },
              child: const Text('Join'),
            )
          ],
        ),
      ),
    );
  }
}
