import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const Color iconColor =  Color.fromARGB(255, 107, 169, 109);
  static const iconsPadding = EdgeInsets.fromLTRB(30, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
   return Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(30),
          child:
            GestureDetector(child: const CircleAvatar( 
              backgroundImage: 
                AssetImage('assets/images/oscar-ballestas.png'),radius: 130,),
              onTap: (){
                showAlert(context);
              },
            )
          ),
          const ListTile(
            contentPadding: iconsPadding,
            title:  Text(
              'Óscar Ballestas',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle:  Text('Developer'),
            leading: Icon(
              Icons.person,
              color: iconColor,
            ),
          ),

          const ListTile(
            contentPadding: iconsPadding,
            title: Text(
              '300-4796401',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: iconColor,
            ),
          ),

          const ListTile(
            contentPadding: iconsPadding,
            title: Text('oballestas@lsv-tech.com'),
            leading: Icon(
              Icons.contact_mail,
              color:iconColor,
            ),
          ),
        ],
      )
    
  ;
}}

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