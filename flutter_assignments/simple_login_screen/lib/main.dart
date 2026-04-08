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
      title: 'Simple Login Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: const Color(0xFFF4F7FB),
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_logo.png', width: 96, height: 96),
            const SizedBox(height: 24),
            Text(
              'Welcome Back',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Login button pressed');
                },
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Signup button pressed');
                },
                child: const Text('Signup'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
