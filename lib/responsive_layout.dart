import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size; //width and height
    Orientation orientation = MediaQuery.of(context).orientation; //landscape or portrait


    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layout'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Text("Screen Width : ${screenSize.width.toStringAsFixed(2)}",
          style: const TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
          ), 

          Text("Screen Orientation : ${orientation.name}",
          style: const TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}