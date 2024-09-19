import 'package:flutter/material.dart';

class Wisata extends StatelessWidget {
  const Wisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Destinasi Wisata', style: TextStyle(color: Colors.black)),
              background: Image.network(
                'https://i.pinimg.com/474x/4a/e9/52/4ae952889253b6c75fac32a009c9130d.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              const [
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/564x/4a/f2/53/4af253df2280a455bf306d762f4be08e.jpg',
                  title: 'Bali',
                  description: 'Bali terkenal dengan pantainya yang indah dan budaya yang kaya.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/98/0d/3d/980d3dfeeda404c6458796481bb8bf69.jpg',
                  title: 'Yogyakarta',
                  description: 'Yogyakarta adalah kota yang kaya akan sejarah dan seni.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/ee/d2/f8/eed2f8a7d43ab90d25a6508e8f9cb6b5.jpg',
                  title: 'Lombok',
                  description: 'Lombok menawarkan keindahan alam yang menakjubkan dan pantai yang tenang.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/b9/9b/24/b99b24d45a3fd5c9cbd999cc604a67ff.jpg',
                  title: 'Pulau Komodo',
                  description: 'Pulau Komodo adalah habitat asli dari hewan komodo yang langka.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/564x/19/e6/b8/19e6b8556b474bf3e62f304a034c2893.jpg',
                  title: 'Raja Ampat',
                  description: 'Raja Ampat adalah surga bagi penyelam dengan terumbu karang yang memukau.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/27/f3/1d/27f31d9c494cf589a92948ae2211a80a.jpg',
                  title: 'Candi Borobudur',
                  description: 'Candi Borobudur adalah monumen Buddha terbesar di dunia.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/21/1a/fb/211afbaa2a8c57b83a3576db148591fc.jpg',
                  title: 'Gunung Bromo',
                  description: 'Gunung Bromo adalah destinasi populer untuk menikmati matahari terbit.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/93/7f/e6/937fe63319a127f8505d3014e8e80bb1.jpg',
                  title: 'Danau Toba',
                  description: 'Danau Toba adalah danau vulkanik terbesar di dunia dengan pulau di tengahnya.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/a4/26/91/a42691573a3545a29c14575fd456c227.jpg',
                  title: 'Kepulauan Derawan',
                  description: 'Kepulauan Derawan terkenal dengan keindahan bawah lautnya.',
                ),
                WisataCard(
                  imageUrl: 'https://i.pinimg.com/474x/25/bc/3f/25bc3f1e93ff8c52184fbd7f26365388.jpg',
                  title: 'Taman Laut Bunaken',
                  description: 'Taman Laut Bunaken adalah destinasi terkenal untuk snorkeling dan diving.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WisataCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const WisataCard({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 180.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
