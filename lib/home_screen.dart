import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_two/main.dart';
import 'package:provider_example_two/settings_screen.dart';

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var temp = Provider.of<Temperature>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Главный экран"),
              TextButton(onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SettingsScreen(),
                  ),
                );
              },
                child: const Text("Настройки"),
              ),
              const SizedBox(height: 50),
              Text(temp.temperature.toString()),
              TextButton(onPressed: () {
                Provider.of<Temperature>(context, listen: false).plusTemp();
              },
                child: const Text("Прибавить темпереатуру"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
