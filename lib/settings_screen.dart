import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_two/info_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var b = Provider.of<List<String>>(context);
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Экран настроек"),
              TextButton(onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const InfoScreen(),
                  ),
                );
              },
                child: const Text("Информация"),
              ),
              const SizedBox(height: 50),
              Text(b[1]),
            ],
          ),
        ),
      ),
    );
  }
}

