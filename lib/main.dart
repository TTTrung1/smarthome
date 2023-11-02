import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(40,36,36,1),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 32,
              color: Colors.white,
          ),
          titleMedium: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),
          titleSmall: TextStyle(
              fontSize: 16,
            color: Colors.white
          ),
        ),
        fontFamily: 'Manrope',
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}


