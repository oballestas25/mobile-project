import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:const[
              CircleAvatar( 
              backgroundImage: AssetImage('assets/images/oscar-ballestas.png'),radius: 130),
              Text("\n Name: Óscar Ballestas",style: TextStyle(fontSize: 20),),
              Text("Username: oballestas",style: TextStyle(fontSize: 20),),
              Text("Cel: 3004796401",style: TextStyle(fontSize: 20),),
              Text("Email: oballestas@lsv-tech.com",style: TextStyle(fontSize: 20),),
            ],),
        ),
      );

  }
}