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
        appBar: AppBar(
        title: const Text("Car Wash"),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
            onPressed: (){
              showSearch(context: context, delegate: MySearchDelegate());
            }, 
            icon: const Icon(Icons.search))
        ],
        ),
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

class MySearchDelegate extends SearchDelegate {

    List<String> searchResults = [
      'Servicio 1',
      'Servicio 3',
      'Servicio 4',
      'Servicio 5',
    ];


    @override 
    Widget? buildLeading(BuildContext context) => IconButton(
      icon:const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );

    @override 
    List<Widget>? buildActions(BuildContext context) =>[
        IconButton(
        icon: const Icon(Icons.clear),
        onPressed: (){
          if (query.isEmpty){
            close(context, null);
          }else{
            query='';
          }
        },
      )
    ];


  @override
  Widget buildResults(BuildContext context)=> Center(
    child: Text(
      query,
      style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult){
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context,index){
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: (){
            query = suggestion;

            showResults(context);
          },
        );
      },
    );
  }}

