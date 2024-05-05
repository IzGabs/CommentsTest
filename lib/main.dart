import 'package:dev_test_1/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryTextTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF4b39ef),
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF4b39ef)),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                fontFamily: 'Outfit',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
