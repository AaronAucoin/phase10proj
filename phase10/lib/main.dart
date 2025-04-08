import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/join_game_screen.dart';
import 'screens/game_lobby_screen.dart';
import 'screens/game_screen.dart';
import 'screens/camera_screen.dart';
import 'screens/solo_game_screen.dart';
import 'screens/username_screen.dart';
import 'providers/game_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Phase10App());
}

class Phase10App extends StatelessWidget {
  const Phase10App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GameProvider()),
      ],
      child: MaterialApp(
        title: 'Phase 10 App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          useMaterial3: true,
        ),
        initialRoute: '/username',
        routes: {
          '/username': (context) => const UsernameScreen(),
          '/': (context) => HomeScreen(username: ModalRoute.of(context)!.settings.arguments as String),
          '/join': (context) => const JoinGameScreen(),
          '/lobby': (context) => const GameLobbyScreen(),
          '/game': (context) => const GameScreen(),
          '/camera': (context) => const CameraScreen(),
          '/solo': (context) => const SoloGameScreen(),
        },
      ),
    );
  }
}
