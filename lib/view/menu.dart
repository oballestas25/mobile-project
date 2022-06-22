import 'package:flutter/material.dart';
import 'package:mobile_project/view/home_view.dart';
import 'package:mobile_project/view/porfile.dart';
import 'list_firebase.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => MenuS();
}

class MenuS extends State<Menu> {

  int _selectedIndex=0;
  static const TextStyle optionStyle = TextStyle(fontSize: 24,fontWeight: FontWeight.bold);

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const ListFireBase(),
    const Profile(),
  ];

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: const Text("Car Wash"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex),),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem (
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem (
            icon: Icon(Icons.car_repair),
            label: "Servicios"
          ),
          BottomNavigationBarItem (
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
      );
  }
}