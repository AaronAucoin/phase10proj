import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome, $username')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/join', arguments: username),
              child: const Text('Join Game'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/lobby', arguments: username),
              child: const Text('Create Game'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/solo', arguments: username),
              child: const Text('Solo Play'),
            ),
          ],
        ),
      ),
    );
  }
}
