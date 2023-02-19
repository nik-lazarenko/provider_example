import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_two/home_screen.dart';

void main() {
  int a = 1;
  List<String> b = ["Привет", "Здрвствуйте"];
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => a),
        Provider(create: (context) => b),
        ChangeNotifierProvider(create: (context) => Temperature()),
      ],
      child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ),
      // child: Provider(
      //   create: (context) => a,
      //   child: const MaterialApp(
      //     debugShowCheckedModeBanner: false,
      //     home: HomeScreen(),
      //   ),
      // ),
    ),
  );
}

class Temperature extends ChangeNotifier{
  int temperature = 20;

  void plusTemp() {
    temperature++;
    notifyListeners();
  }
}