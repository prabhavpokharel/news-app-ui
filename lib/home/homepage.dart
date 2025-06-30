import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List carouselItems = [
    'assets/images/pexels-bri-schneiter-28802-346529.jpg',
    'assets/images/pexels-pixabay-147411.jpg',
    'assets/images/pexels-pixabay-247599.jpg',
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
                SizedBox(
                  height:200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: carouselItems.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                    return Stack(
                      children: [
                        Container(
                          height:200,
                          width:300,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(carouselItems[index]))
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 300,
                          margin: const EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black.withOpacity(0.2)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('2 hours ago', style: TextStyle(color: Colors.white),),
                                    Icon(Icons.bookmark, color: Colors.white,)
                                  ],
                                ),
                                Spacer(),
                                Text("A ruggedly beautiful quarantine site", style: TextStyle(color: Colors.white, fontSize: 18),)
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }),
                ),
                Container(
                  
                )
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
