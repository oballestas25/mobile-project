import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  ListView1({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> guitarBrands = [
    {
      "image":
          "https://d1aeri3ty3izns.cloudfront.net/media/8/80634/1200/preview.jpg",
      "name": "Fender"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2020/02/Gibson-Logo.jpg",
      "name": "Gibson"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2019/12/Yamaha-Logo-1967.jpg",
      "name": "Yamaha"
    },
    {
      "image":
          "https://d1aeri3ty3izns.cloudfront.net/media/8/80634/1200/preview.jpg",
      "name": "Fender"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2020/02/Gibson-Logo.jpg",
      "name": "Gibson"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2019/12/Yamaha-Logo-1967.jpg",
      "name": "Yamaha"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Guitar Brands'),
        ),
        body: ListView.builder(
          itemCount: guitarBrands.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    Image.network(guitarBrands[index]["image"]!).image,
              ),
              title: Text(guitarBrands[index]["name"]!),
            );
          },
        ));
  }
}
