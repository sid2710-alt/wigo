import 'package:flutter/material.dart';
import 'package:wigo/screens/fall_out_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wigo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: Color(0xffbd5cff),
            tertiary: Color(0xff58297d)),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle:
                  MaterialStatePropertyAll(TextStyle(color: Colors.white)),
              backgroundColor: MaterialStatePropertyAll(Color(0xfff6b800))),
        ),
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}
