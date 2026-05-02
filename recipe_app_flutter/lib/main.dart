import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'レシピアプリ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('タイトル')),
        body: Center(child: Text('メイン')),
      ),
    );
  }
}
