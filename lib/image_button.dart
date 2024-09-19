import 'package:flutter/material.dart';

class MyButtonImage extends StatefulWidget {
  const MyButtonImage({super.key});

  @override
  State<MyButtonImage> createState() => _MyButtonImageState();
}

class _MyButtonImageState extends State<MyButtonImage> {
  final List<String> _imagesUrl = [
    'https://i.pinimg.com/736x/55/c7/ed/55c7ed4fc316eb02e1b309dcea148f8b.jpg',
    'https://i.pinimg.com/736x/a8/33/e1/a833e152892a54ad43b86a0b4d27828f.jpg',
    'https://i.pinimg.com/736x/5b/dc/10/5bdc1011d9eb8d138d3a04df8dcae3e3.jpg',
    'https://i.pinimg.com/736x/1c/1a/94/1c1a94f7675bb795fb59048e419defcf.jpg',
    'https://i.pinimg.com/736x/2f/c4/55/2fc455991f4266d1642454da7f7b26ac.jpg',
  ];

  int index = 0;

  void _previousImage() {
    if (index > 0) {
      setState(() {
        index--;
      });
    }
  }

  void _resetImage() {
    setState(() {
      index = 0;
    });
  }

  void _nextImage() {
    if (index < _imagesUrl.length - 1) {
      setState(() {
        index++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Determine if buttons should be enabled
    bool isFirstImage = index == 0;
    bool isLastImage = index == _imagesUrl.length - 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('image_button.dart',
        style: TextStyle(fontFamily: "NewAmsterdam"),),
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

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: isFirstImage ? null : _previousImage,
                  child: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: isFirstImage ? null : _resetImage,
                  child: const Icon(Icons.replay_sharp),
                ),
                
                const SizedBox(width: 20),
                
                ElevatedButton(
                  onPressed: isLastImage ? null : _nextImage,
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
