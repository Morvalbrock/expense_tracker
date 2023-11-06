import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorSheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
//colorScheme.fromSeed select one color base theme was change

var kDarkColorSheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorSheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorSheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorSheme.primaryContainer,
            foregroundColor: kDarkColorSheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorSheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSheme.onPrimaryContainer,
          foregroundColor: kColorSheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorSheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorSheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorSheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
