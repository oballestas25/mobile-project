import 'package:flutter/material.dart';


// ignore: must_be_immutable
class HomeView extends StatelessWidget{
  HomeView({Key? key}) : super(key: key);

  List<List> Services= [
    ['tapiceria', 'data:image/png;base64,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'],
    ['lavado', 'https://images.vexels.com/media/users/3/147729/isolated/lists/65c95302d846aed01e2d29158399c0be-logotipo-del-servicio-de-lavado-de-autos.png'],
    ['pulido', 'https://cdn.iconscout.com/icon/premium/png-256-thumb/car-polish-3965594-3289743.png']
  ];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
            )
          ]) ,
        )
    );
    
  }


  // Widget buildCarImage() => CircleAvatar(
  //   radius: profileHeight /2,
  //   backgroundColor: Colors.grey.shade800,
  //   backgroundImage: const AssetImage('assets/images/car-wash-logo.jpg'),
  // );
  
}

