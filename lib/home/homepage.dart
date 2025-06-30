import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> carouselItems = [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.network(
      'https://www.thetreknepal.com/wp-content/uploads/2024/07/Tips-for-Trekking.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ),
  Image.network(
    'https://www.nepalguideinfo.com/new/wp-content/uploads/2025/01/nepal-scaled.jpg',
    fit: BoxFit.cover,
    width: double.infinity,
  ),
];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        appBar: AppBar(
          title: const Text('oxu.az'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'All News'),
              Tab(text: 'Business'),
              Tab(text: 'Politics'),
              Tab(text: 'Tech'),
              Tab(text: 'Science'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: All News
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CarouselSlider(items: carouselItems, options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16/9
                  )),
                ),
              ],
            ),
            // Tab 2
            const Center(child: Text("Business")),
            // Tab 3
            const Center(child: Text("Politics")),
            // Tab 4
            const Center(child: Text("Tech")),
            // Tab 5
            const Center(child: Text("Science")),
          ],
        ),
      ),
    );
  }
}
