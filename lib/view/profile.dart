import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Map<String,dynamic> profileData;
  Profile(this.profileData,{Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const Color iconColor =  Color.fromARGB(255, 107, 169, 109);
  static const iconsPadding = EdgeInsets.fromLTRB(30, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
        title: const Text("Desarrollador"),
        backgroundColor: Colors.cyan,
      ),
      
     body: Column(
          children: [
            Padding(
            padding: const EdgeInsets.all(30),
            child:
              GestureDetector(child: CircleAvatar( 
                backgroundImage: 
                  AssetImage(widget.profileData["image"]),radius: 130,),
                onTap: (){
                  showAlert(context,widget.profileData["image"]);
                },
              )
            ),
            ListTile(
              contentPadding: iconsPadding,
              title:  Text(
                widget.profileData["name"],
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Developer'),
              leading: const Icon(
                Icons.person,
                color: iconColor,
              ),
            ),
   
             ListTile(
              contentPadding: iconsPadding,
              title: Text(
                widget.profileData["cel"],
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.contact_phone,
                color: iconColor,
              ),
            ),
   
            ListTile(
              contentPadding: iconsPadding,
              title: Text(widget.profileData["email"]),
              leading: const Icon(
                Icons.contact_mail,
                color:iconColor,
              ),
            ),
          ],
        ),
   )
    
  ;
}}

showAlert(BuildContext context,profileImage) {  
    
  AlertDialog alert = AlertDialog(  
    content:  Image( 
      image: AssetImage(profileImage),
      
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