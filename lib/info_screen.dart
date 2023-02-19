
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_two/main.dart';

class InfoScreen extends StatelessWidget {
   const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var a = Provider.of<int>(context);
    var temp = Provider.of<Temperature>(context).temperature;
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Экран информации"),
             Text(a.toString()),
             Text(temp.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
