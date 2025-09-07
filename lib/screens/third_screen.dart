import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third'; // ✅ routeName ให้ตรงกัน

  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item ID: ${args?['itemId']}'),
            Text('Message: ${args?['message']}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'กลับจาก Third Screen');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
