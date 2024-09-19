import 'package:flutter/material.dart';
import 'package:flutter_project_1/responsive_layout.dart';
import 'package:flutter_project_1/second_page.dart';
import 'package:flutter_project_1/layout_builder.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController _message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'First Page',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _message,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Message"),
                  hintText: "Write your message here!",
                ),
              ),
            ),
            // const Text(
            //   'just click the button',
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange),
            // ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_message.text == "") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter your message'),
                    ),
                  );
                  return;
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage(_message.text);
                }));
              },
              child: const Text('Go to next page'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResponsiveLayout()
                    ),
                  );
                },
                child: Text('Responsive Layout')),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyLayoutBuilder()
                    ),
                  );
                },
                child: Text('Layout Builder'))
          ],
        ),
      ),
    );
  }
}


