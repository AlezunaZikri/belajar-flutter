import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String message;

  const SecondPage(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Second Page',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your message : $message', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text('Return'))
          ],
        ),
      ),
    );
  }
}
