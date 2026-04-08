import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Two Buttons Layout',
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    debugPrint('Login button pressed');
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    debugPrint('Register button pressed');
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
