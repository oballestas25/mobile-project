import 'package:flutter/material.dart';
import '../domain/firebase_connection_detail.dart';


class DetailView extends StatefulWidget {
  String index;
  DetailView(this.index,{Key? key}) : super(key: key);
  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  Map<String, dynamic> registros = {};
  final connection = FirebaseConnectionDetail();
  

  @override
  Widget build(BuildContext context) {
    callDatabase();
    if (registros.isNotEmpty){
          return  Scaffold(
        appBar: AppBar(
        title: Text("Servicio ${widget.index}"),
        backgroundColor: Colors.cyan,
      ),
      
      body: Center(
        child: Column(children: [
        Image(image: Image.network(registros['image']).image),
        const Text("\nUsuario", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Nombre: ${registros["nombre"]} ${registros["apellido"]}"),
        Text("Celular: ${registros["cel"]}"),
        Text("Licencia: ${registros["licencia"]}"),
        const Text("\nCarro", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Marca: ${registros["Carro"]["marca"]}"),
        Text("Modelo: ${registros["Carro"]["modelo"]}"),
         Text("Color: ${registros["Carro"]["Color"]}"),
        Text("Placa: ${registros["Carro"]["placa"]}"),
        const Text("\nServicios", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Lavado: ${registros["Servicio"]["lavado"]}"),
        Text("Pulido: ${registros["Servicio"]["polish"]}"),
        Text("Tapicería: ${registros["Servicio"]["tapiceria"]}"),
        ]),  
     
    ));

    }else{
        return  const Scaffold(
              
              body: Center(child: Text("Loading...")));
    }

  }

  void callDatabase() async {
    final respuesta = await connection.getDetailRegister(widget.index);
    setState(() {
      registros = respuesta;
    });
  }
}