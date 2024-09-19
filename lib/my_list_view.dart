import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  final List<int> numbersList = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('List Wisata',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [

          Container(
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.grey,
            ),
            child: const Center(
              child: Text('Wisata 1', 
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),

          const SizedBox(height: 20,),
          Container(
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.grey,
            ),
            child: const Center(
              child: Text('Wisata 2', 
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          
          const SizedBox(height: 20,),
          Container(
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.grey,
            ),
            child: const Center(
              child: Text('Wisata 3', 
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),

         const SizedBox(height: 20,),
          Container(
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.grey,
            ),
            child: const Center(
              child: Text('Wisata 4', 
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          
          const SizedBox(height: 20,),
          Container(
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.grey,
            ),
            child: const Center(
              child: Text('Wisata 5', 
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}