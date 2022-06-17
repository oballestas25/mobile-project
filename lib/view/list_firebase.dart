import 'package:flutter/material.dart';
import '../domain/firebase_connection.dart';
import '../entities/registros.dart';

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
            itemBuilder: (context, index) {
              return ListTile(
                leading: GestureDetector( 
                  child: CircleAvatar(
                      backgroundImage: Image.network(registros[index].image!).image,
                  ),
                  onTap: () {
                      showAlert(context,registros,index); 
                    },
                ), 
                title: GestureDetector( child:Text(
                    "Service ${index+1}"),
                    ),
                       onTap: () {
                      showAlert(context,registros,index); 
                    },
              );
            }));
  }

  void callDatabase() async {
    final respuesta = await connection.getRegisters();
    setState(() {
      registros = respuesta.registros!;
    });
  }

  showAlert(BuildContext context,carsRgisters,index) {  
  
    Widget okButton = TextButton(  
      child: const Center (child: Text("Ok")),  
      onPressed: () {  
        Navigator.of(context).pop();  

      },  
    );  
    
    AlertDialog alert = AlertDialog(  
      content: Column(children: [
        Image(image: Image.network(carsRgisters[index].image!).image),
        const Text("\nUsuario", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Nombre: ${registros[index].nombre} ${registros[index].apellido}"),
        Text("Celular: ${registros[index].cel}"),
        Text("Licencia: ${registros[index].licencia}"),
        const Text("\nCarro", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Marca: ${registros[index].carro?.marca}"),
        Text("Modelo: ${registros[index].carro?.modelo}"),
        Text("Color: ${registros[index].carro?.color}"),
        Text("Placa: ${registros[index].carro?.placa}"),
        const Text("\nServicios", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Lavado: ${registros[index].servicio?.lavado}"),
        Text("Pulido: ${registros[index].servicio?.polish}"),
        Text("Tapicería: ${registros[index].servicio?.tapiceria}"),
        ]),
      actions: [  
        okButton,  
      ],  
    );  
    
    showDialog(  
      context: context,  
      builder: (BuildContext context) {  
        return alert;  
      },  
    );  
}  

}

