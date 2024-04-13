import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:meals/screens/categories.dart';

final ColorScheme themeColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 31, 57, 0),
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: themeColorScheme,
        textTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: const AppBarTheme()
            .copyWith(backgroundColor: themeColorScheme.inversePrimary),
        scaffoldBackgroundColor: themeColorScheme.background,
      ),
      home: const CategoriesScreen(),
    );
  }
}
