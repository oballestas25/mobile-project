import 'package:flutter/material.dart';
import '../domain/firebase_connection.dart';
import '../entities/registros.dart';
import 'detail_view.dart';

class CardCustom extends StatelessWidget{
  List<Registros> carsData= [];
  int index;
  CardCustom(this.carsData, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 3,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        child: SizedBox(
          width: 370,
          height: 75,
          child: ListTile(
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text("Servicio ${index+1}"),
          leading: CircleAvatar(
                backgroundImage:
                    Image.network(carsData[index].image!).image,
              ),
        ),
        ),
      ),
    );
  } 
}

class ListFireBase extends StatefulWidget {
  const ListFireBase({Key? key}) : super(key: key);

  @override
  State<ListFireBase> createState() => _ListFireBaseState();
}

class _ListFireBaseState extends State<ListFireBase> {
  List<Registros> registros = [];
  final connection = FirebaseConnection();
 
  @override
  Widget build(BuildContext context) {
    callDatabase();
    return Scaffold(
        body: ListView.builder(
          itemCount: registros.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            return ListTile(
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailView(registros[index].id.toString())),
                    );
                  },
                  child: Stack(
                    children: [
                     CardCustom(registros,index),
                    ])
                  ));
          }
        ));  
  }

  void callDatabase() async {
    final respuesta = await connection.getRegisters();
    setState(() {
      registros = respuesta.registros!;
    });
  }
 

}

