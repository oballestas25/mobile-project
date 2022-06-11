import 'package:mobile_project/entities/registros.dart';

class ResponseFirebase{

  List<Registros>? registros;
  ResponseFirebase({this.registros});

  ResponseFirebase.fromJson(List<dynamic>json){
    registros= json.map((e) => Registros.fromJson(e)).toList();
  }

/*  ResponseFirebase.fromJson(Map<String,dynamic> json) {

    if (json['registros'] != null) {

      registros = <Registros>[];
      json['Registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    }
  }  */


  
}