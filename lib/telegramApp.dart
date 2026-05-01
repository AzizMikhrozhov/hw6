import 'package:flutter/material.dart';

import 'package:homework6/homePage.dart';

class TelegramApp extends StatefulWidget {
  const TelegramApp({super.key});
  @override
  State<TelegramApp> createState() => _TelegramAppState();
}

class _TelegramAppState extends State<TelegramApp> {
  ThemeMode _themeMode = ThemeMode.light;
  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Drawer',
      themeMode: _themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xFF2AABEE),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: HomePage(toggleTheme: toggleTheme),
    );
  }
}
