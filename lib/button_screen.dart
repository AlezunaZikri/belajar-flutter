import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("button screen",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
    children: [ 
      ElevatedButton(onPressed: () {}, child: Text("Elevated button"),),
      TextButton(onPressed: () {}, child: Text("Elevated button"),),
       OutlinedButton(onPressed: () {}, child: Text("Elevated button"),),
     IconButton(onPressed: () {}, icon: Icon(Icons.voice_chat_rounded)),
     
    ],
    
  ),
),



    );
  }
}