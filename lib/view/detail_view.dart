import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final brandImage;
  const DetailView(this.brandImage,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Center(
        child: Image( image: Image.network(brandImage["image"]!).image)
      ),
     
    );
  }
}