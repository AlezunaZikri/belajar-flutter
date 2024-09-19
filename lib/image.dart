import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  final List<String> _imagesUrl = [
    'https://i.pinimg.com/736x/b3/61/67/b361675888aadd2c48620bdaabaf148b.jpg',
    'https://i.pinimg.com/736x/3f/cd/17/3fcd1785622d5eea86a236d9ad795fba.jpg',
    'https://i.pinimg.com/564x/3c/1f/9b/3c1f9b002f7fdcf629c870a75787f713.jpg',
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('image.dart'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              _imagesUrl[index],
              width: 400,
              height: 400,
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  index = (index + 1) % _imagesUrl.length;
                });
              },
              child: const Text('Next Image'),
            ),

          ],
        ),
      ),
    );
  }
}
