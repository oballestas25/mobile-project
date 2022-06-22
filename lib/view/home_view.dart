
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
      appBar: AppBar( 
        title: const Text("Car Wash"),
        backgroundColor: Colors.cyan,),
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
                child: Text("Tapicería", style: TextStyle(fontSize: 14), ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 350, right: 20),
                child: CircleAvatar(backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://images.vexels.com/media/users/3/146242/isolated/lists/09de694b01830a39d3d4c807d2cd34b3-coche-en-icono-de-tunel-de-lavado.png"),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 410, right: 20),
                child: Text("Lavado", style: TextStyle(fontSize: 14), ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 350, left: 200),
                child: CircleAvatar(backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://cdn.iconscout.com/icon/premium/png-256-thumb/car-polish-3965594-3289743.png"),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 410, left: 200),
                child: Text("Polish", style: TextStyle(fontSize: 14), ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 500, right: 20),
                child: Text("No dudes en contactarnos!", style: TextStyle(fontSize: 16), ),
              ),
            ],
            
            ),
        ],
      )
    );
  }

  Widget buildCoverImage() => Column(
    children: [
      Padding (
        padding: const EdgeInsets.only(bottom:100),
        child:Text("Bienvenido a los servicios de lavado de autos", style:GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 21, fontWeight: FontWeight.bold)) ,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Image.network(
          "https://static.vecteezy.com/system/resources/previews/000/549/723/non_2x/abstract-blue-background-dark-curve-002-vector.jpg",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      ),
    ],
  );

  Widget buildCoverIcon() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.only(top: 235),
        child: Text('Nuestros servicios:', style:GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 22, fontWeight: FontWeight.bold)),
      ),
    ],
  );



  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight /2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: const NetworkImage('https://img.freepik.com/free-vector/auto-detailing-car-wash-logo-design_160069-100.jpg?w=2000'),
  );
  
  
}




