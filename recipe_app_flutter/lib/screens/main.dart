import 'package:flutter/material.dart';
import 'category_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'レシピアプリ',
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.orange,
          selectionColor: Colors.orangeAccent,
          selectionHandleColor: Colors.orange,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: Colors.orange),
          hintStyle: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.orange,
          inactiveTrackColor: Colors.orange[100],
          thumbColor: Colors.orange,
          overlayColor: Colors.orange.withValues(alpha: 0.2),
          valueIndicatorColor: Colors.orange,
          valueIndicatorTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const CategoryListScreen(),
    );
  }
}
