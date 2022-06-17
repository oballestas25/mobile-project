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
            children: 
             [
              GestureDetector(child: CircleAvatar( 
              backgroundImage: AssetImage('assets/images/oscar-ballestas.png'),radius: 130,),
              onTap: (){
                showAlert(context);
              },
              ),
              
              Text("\n Name: Óscar Ballestas",style: TextStyle(fontSize: 18),),
              Text("Username: oballestas",style: TextStyle(fontSize: 18),),
              Text("Cel: 3004796401",style: TextStyle(fontSize: 18),),
              Text("Email: oballestas@lsv-tech.com",style: TextStyle(fontSize: 18),),
            ],),
        ),
      );

  }
}

showAlert(BuildContext context) {  
    
  const AlertDialog alert = AlertDialog(  
    content:  Image( 
      image: AssetImage('assets/images/oscar-ballestas.png'),
      
      )
      ,
  );  
  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}  