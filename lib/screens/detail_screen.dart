import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final itemId = args?['itemId'] ?? 'No ID'; // ✅ key ให้ตรงกับ home_screen
    final message = args?['message'] ?? 'No Message';

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: $itemId'),
            Text('Detail: $message'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'item1 detail returned.');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
