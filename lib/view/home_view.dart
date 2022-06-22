
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget{
  const HomeView({Key? key}) : super(key: key);


  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView>{
  final double coverHeight = 200;
  final double profileHeight =144;

  List<List> services = [
    ['lavado','https://images.vexels.com/media/users/3/146242/isolated/lists/09de694b01830a39d3d4c807d2cd34b3-coche-en-icono-de-tunel-de-lavado.png'],
    ['polish', 'https://cdn.iconscout.com/icon/premium/png-256-thumb/car-polish-3965594-3289743.png']
  ];
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              buildCoverImage(),
              buildProfileImage(),
              buildCoverIcon(),
              const SizedBox(height: 8,),
              const Padding(
                padding: EdgeInsets.only(top: 350, right: 200),
                child: CircleAvatar(backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://http2.mlstatic.com/D_NQ_NP_638102-MLM44273692607_122020-V.jpg"),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 410, right: 200),
                child: Text("Tapiceria", style: TextStyle(fontSize: 10), ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 350, right: 20),
                child: CircleAvatar(backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://images.vexels.com/media/users/3/146242/isolated/lists/09de694b01830a39d3d4c807d2cd34b3-coche-en-icono-de-tunel-de-lavado.png"),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 410, right: 20),
                child: Text("Lavado", style: TextStyle(fontSize: 10), ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 350, left: 200),
                child: CircleAvatar(backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://cdn.iconscout.com/icon/premium/png-256-thumb/car-polish-3965594-3289743.png"),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 410, left: 200),
                child: Text("Polish", style: TextStyle(fontSize: 10), ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 500, right: 20),
                child: Text("No dudes en contactarnos!", style: TextStyle(fontSize: 10), ),
              ),
            ],
            
            ),
        ],
      )
    );
  }

  Widget buildCoverImage() => Column(
    children: [
      const Text("Welcome to the Car Wash Services", style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 50, 137))),
      Image.network(
        "https://static.vecteezy.com/system/resources/previews/000/549/723/non_2x/abstract-blue-background-dark-curve-002-vector.jpg",
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ),
    ],
  );

  Widget buildCoverIcon() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      SizedBox(height: 15,),
      Padding(
        padding: EdgeInsets.only(top: 235),
        child: Text('About our services:', style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 50, 137))),
      ),
    ],
  );



  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight /2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: const NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/car-wash-logo-design-template-13417cc52f34454a1e8aa46d5bc0aa38_screen.jpg?ts=1645593211'),
  );
  
  
}




