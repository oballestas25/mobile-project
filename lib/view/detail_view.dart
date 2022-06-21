import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final register;
  const DetailView(this.register,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Center(
        child: Column(children: [
        Image(image: Image.network(register.image!).image),
        const Text("\nUsuario", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Nombre: ${register.nombre} ${register.apellido}"),
        Text("Celular: ${register.cel}"),
        Text("Licencia: ${register.licencia}"),
        const Text("\nCarro", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Marca: ${register.carro?.marca}"),
        Text("Modelo: ${register.carro?.modelo}"),
        Text("Color: ${register.carro?.color}"),
        Text("Placa: ${register.carro?.placa}"),
        const Text("\nServicios", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Lavado: ${register.servicio?.lavado}"),
        Text("Pulido: ${register.servicio?.polish}"),
        Text("Tapicería: ${register.servicio?.tapiceria}"),
        ]),
     
    ));
  }
}