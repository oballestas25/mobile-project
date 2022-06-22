import 'package:flutter/material.dart';
import 'package:mobile_project/view/profile.dart';



class Profiles extends StatelessWidget {
  Profiles({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> profiles = [
    {
      "image":"assets/images/angelica-morales.jpeg",
      "name":"Angélica Morales",
      "cel":"3206490408",
      "email":"amorales@lsv-tech.com"
    },
    {
      "image":"assets/images/oscar-ballestas.png",
      "name":"Óscar Ballestas",
      "cel":"3004796401",
      "email":"oballestas@lsv-tech.com"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
          title: const Text("Profiles"),
        backgroundColor: Colors.cyan,),
        body: ListView.builder(
          itemCount: profiles.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            return ListTile(
              leading: GestureDetector(
                  onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile(profiles[index])),
                    ); 
                  },
                child:CircleAvatar(
                backgroundImage:
                    AssetImage(profiles[index]["image"]!),
              ),
              )
,

              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile(profiles[index])),
                    );
                  },
                  child: Text(profiles[index]["name"])),
            );
          },
        ));
  }
}

