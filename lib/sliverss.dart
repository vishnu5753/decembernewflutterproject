import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Sliverss(),
      ),
    ),
  );
}

class Sliverss extends StatelessWidget {
  var colors = ["800", "700", "600", "500", "400", "300", "200", "100", "50"];
  var title = ["seperater1", "seperater2", "seperater3", "seperater4", "seperater5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            title: const Text("Custom Appbar"),
            backgroundColor: Colors.pink, // Set a background color for visibility
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.pinkAccent,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search Something",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                String currentTitle = title[index];
                List<Widget> characterWidgets = [];

                for (int i = 0; i < currentTitle.length; i++) {
                  characterWidgets.add(
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        currentTitle[i],
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }

                return Card(
                  color: Colors.green[int.parse(colors[index])],
                  child: Column(
                    children: characterWidgets,
                  ),
                );
              },
              childCount: colors.length,
            ),
          ),
        ],
      ),
    );
  }
}
